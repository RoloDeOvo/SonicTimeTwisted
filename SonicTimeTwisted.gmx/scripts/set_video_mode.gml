/**
Video modes:
0 - window
1 - window x2
2 - window x3
3 - full screen
4 - full screen blurred
**/
if(get_os_type() == os_windows)
{
    with objScreen {
        video_mode = argument0;
        
        if(video_mode >= 0 && video_mode < 3)
        {
            window_state = video_mode + 1;
            window_scale = video_mode + 1;
            window_set_fullscreen(false);
            window_set_size(width * window_scale, height * window_scale);
            
            alarm[0]=1;
        }
        else
        if(video_mode == 3)
        {
            window_state = 4;
            window_scale = 4;
            window_set_fullscreen(true);
            window_set_size(width * window_scale, height * window_scale);
            
            alarm[0]=1;
        }
    }
}
save_video_settings();