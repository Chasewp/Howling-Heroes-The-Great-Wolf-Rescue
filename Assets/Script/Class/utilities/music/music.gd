extends AudioStreamPlayer

signal volume_fade_finished

# linear volume (0 = muted, 1 = full volume)
var desired_volume : float = 1
var _volume_l : float = 0

func _ready():
	volume_db = linear_to_db(_volume_l)

func _fade(target_linear_volume : float, duration : float = 1):
	if duration <= 0:
		_volume_l = target_linear_volume
		volume_db = linear_to_db(_volume_l)
		volume_fade_finished.emit()
		return
	while _volume_l != target_linear_volume:
		_volume_l = move_toward(_volume_l, target_linear_volume, get_process_delta_time() / duration)
		volume_db = linear_to_db(_volume_l)
		await get_tree().process_frame
	volume_fade_finished.emit()

func start_track(track : AudioStream, fade_time : float = 1):
	if playing:
		if stream == track || track == null:
			return
		else:
			_fade(0, fade_time)
			await volume_fade_finished
	stream = track
	play()
	_fade(desired_volume, fade_time)

func stop_track(fade_time : float = 1):
	_fade(0, fade_time)
	await volume_fade_finished
	stop()
