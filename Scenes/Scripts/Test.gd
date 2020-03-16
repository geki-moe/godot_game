extends Node

func hello():
	return "hello, world"

func log_system_info():
	print("OS.is_debug_build, ", OS.is_debug_build())
	print("OS.get_datetime, ", OS.get_datetime())
	print("OS.get_cmdline_args, ", OS.get_cmdline_args())
	print("OS.get_executable_path, ", OS.get_executable_path())
	print("OS.get_user_data_dir, ", OS.get_user_data_dir())
	print("OS.get_locale, ", OS.get_locale())
	print("OS.get_model_name, ", OS.get_model_name())
	print("OS.get_name, ", OS.get_name())
	print("OS.get_real_window_size, ", OS.get_real_window_size())
	print("OS.get_window_safe_area, ", OS.get_window_safe_area())
	print("OS.get_processor_count, ", OS.get_processor_count())
	print("OS.get_screen_dpi, ", OS.get_screen_dpi())
	print("OS.get_screen_size, ", OS.get_screen_size())
	print("OS.get_video_driver_name, ", OS.get_video_driver_name(OS.get_current_video_driver()))
	print("OS.can_use_threads, ", OS.can_use_threads())
	print("OS.get_power_state, ", OS.get_power_state())
	print("OS.get_power_percent_left, ", OS.get_power_percent_left())
	print("OS.get_audio_driver_name: ")
	for i in OS.get_audio_driver_count():
		print("\t", OS.get_audio_driver_name(i))
	
	print("OS.get_dynamic_memory_usage, ", OS.get_dynamic_memory_usage())
	print("OS.get_static_memory_peak_usage, ", OS.get_static_memory_peak_usage())
	print("OS.get_static_memory_usage, ", OS.get_static_memory_usage())
