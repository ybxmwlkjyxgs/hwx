-- THIS FILE IS AUTO-GENERATED, MIGHT BE OVERWRITTEN BY GUI-EDITOR
local components = {}
components['$$smallcard_unit_attr_panel.template@gui_ctrl.单位属性'] = {url = '@smallcard_unit_attr_panel.component', com_name = '单位属性', template = {
	bind_attr = '生命上限',
	font_color = '#FFFFFF',
	attr_multiply = 1,
	show_mode = 0,
	accuracy_display = 0,
	cat_button_height = 132,
	name = 'GUI控件',
	icon = '@smallcard_unit_attr_panel/image/属性icon.png',
	font_family = 'Regular',
	font_size = 30,
	layout = {
	row_content = 'start',
	height = 48,
	width = -1,
	direction = 'row',
},
}}
components['$$smallcard_unit_attr_panel.template@gui_ctrl.单位属性面板'] = {url = '@smallcard_unit_attr_panel.component', com_name = '单位属性面板', template = {
	layout = {
	col_self = 'center',
	grow_height = 1,
	grow_width = 1,
	row_self = 'center',
},
	bind_unit = 0,
	name = 'GUI控件',
}}
components['$$smallcard_mail.template@gui_ctrl.邮件按钮'] = {url = '@smallcard_mail.component', com_name = '邮件按钮', template = {
	layout = {
	width = 64,
	height = 64,
},
	name = 'GUI控件',
}}
components['$$gameui.template@gui_ctrl.active_button'] = {url = '@gameui.component', com_name = 'active_button', template = {
	name = '动态按钮',
	layout = {
	col_self = 'start',
	width = 250,
	height = 100,
	row_self = 'start',
},
	color = '#FFFFFF',
	click_scale = 0.85,
	Asset = '',
}}
components['$$gameui.template@gui_ctrl.attachable_panel'] = {url = '@gameui.component', com_name = 'attachable_panel', template = {
	hide_on_unit_invisible = false,
	socket_name = 'socket_root',
	name = 'GUI控件',
	scale_by_distance = false,
	layout = {
	col_self = 'start',
	width = 100,
	height = 100,
	row_self = 'start',
},
}}
components['$$gameui.template@gui_ctrl.btn_icon'] = {url = '@gameui.component', com_name = 'btn_icon', template = {
	name = 'GUI控件',
	is_on = false,
	is_switch = false,
	icon = 'image/btn/sword.png',
	layout = {
	col_self = 'start',
	width = 100,
	height = 100,
	row_self = 'start',
},
}}
components['$$gameui.template@gui_ctrl.Buff列表'] = {url = '@gameui.component', com_name = 'Buff列表', template = {
	buff_icon_template = '@gameui.prefab.buff.buff_icon',
	buff_width = 64,
	buff_margin = 7,
	buff_cat_filter = '可被禁用;负面效果',
	default_none_cnt = 3,
	buff_height = 64,
	default_neg_cnt = 3,
	buff_icon = 'image/msgbox/btn_1.png',
	default_pos_cnt = 3,
	buff_polarity = '正面;负面;无',
	name = 'GUI控件',
}}
components['$$gameui.template@gui_ctrl.Buff图标'] = {url = '@gameui.component', com_name = 'Buff图标', template = {
	buff_width = 64,
	buff_margin = 7,
	buff_bg_neg_color = 'rgb(231, 67, 57)',
	buff_icon = 'image/buff/buff_1.png',
	buff_height = 64,
	buff_neg_progress_type = 'clockwise',
	font_size = 24,
	name = 'GUI控件',
	buff_none_progress_type = 'clockwise',
	buff_bg_pos_color = 'rgb(52, 180, 31)',
	buff_pos_progress_type = 'clockwise',
	buff_bg_none_color = 'rgb(154, 154, 154)',
}}
components['$$gameui.template@gui_ctrl.transition_label'] = {url = '@gameui.component', com_name = 'transition_label', template = {
	font = {
	size = 40,
},
	layout = {
	col_self = 'start',
	width = 500,
	height = 100,
	row_self = 'start',
},
	text = '文本:123',
	name = '动态文本',
}}
components['$$gameui.template@gui_ctrl.normal_btn'] = {url = '@gameui.component', com_name = 'normal_btn', template = {
	active_image = 'image/btn/gf_1_major_active.png',
	layout = {
	col_self = 'start',
	width = 250,
	height = 100,
	row_self = 'start',
},
	border = {
	top = 30,
	bottom = 30,
	right = 30,
	left = 30,
},
	name = '按钮-古风1-主要',
	text_color = '#ffffff',
	text_opacity = 1,
	image = 'image/btn/gf_1_major.png',
	text = '默认',
}}
components['$$gameui.template@gui_ctrl.gf_1_minor_btn'] = {url = '@gameui.component', com_name = 'normal_btn', template = {
	active_image = 'image/btn/gf_1_minor_active.png',
	layout = {
	col_self = 'start',
	width = 250,
	height = 100,
	row_self = 'start',
},
	border = {
	top = 30,
	bottom = 30,
	right = 30,
	left = 30,
},
	name = '按钮-古风1-次要',
	text_color = '#ffffff',
	text_opacity = 1,
	image = 'image/btn/gf_1_minor.png',
	text = '默认',
}}
components['$$gameui.template@gui_ctrl.normal_rect'] = {url = '@gameui.component', com_name = 'normal_rect', template = {
	decoration_layout_right = {
	row_self = 'end',
},
	decoration_layout_left = {
	row_self = 'start',
},
	border = {
	top = 45,
	bottom = 45,
	right = 45,
	left = 45,
},
	name = '面板-古风1',
	decoration_image = '',
	is_decoration = false,
	style = 'image/rect/面板-古风1.png',
	layout = {
	col_self = 'start',
	width = 400,
	height = 400,
	row_self = 'start',
},
}}
components['$$gameui.template@gui_ctrl.gf_2_major_btn'] = {url = '@gameui.component', com_name = 'normal_btn', template = {
	active_image = 'image/btn/gf_2_major_active.png',
	layout = {
	col_self = 'start',
	width = 250,
	height = 100,
	row_self = 'start',
},
	border = {
	top = 30,
	bottom = 30,
	right = 30,
	left = 30,
},
	name = '按钮-古风2-主要',
	text_color = '#ffffff',
	text_opacity = 1,
	image = 'image/btn/gf_2_major.png',
	text = '默认',
}}
components['$$gameui.template@gui_ctrl.gf_2_minor_btn'] = {url = '@gameui.component', com_name = 'normal_btn', template = {
	active_image = 'image/btn/gf_2_minor_active.png',
	layout = {
	col_self = 'start',
	width = 250,
	height = 100,
	row_self = 'start',
},
	border = {
	top = 30,
	bottom = 30,
	right = 30,
	left = 30,
},
	name = '按钮-古风2-次要',
	text_color = '#ffffff',
	text_opacity = 1,
	image = 'image/btn/gf_2_minor.png',
	text = '默认',
}}
components['$$gameui.template@gui_ctrl.gf_2_rect'] = {url = '@gameui.component', com_name = 'normal_rect', template = {
	decoration_layout_right = {
	row_self = 'end',
},
	decoration_layout_left = {
	row_self = 'start',
},
	border = {
	top = 45,
	bottom = 45,
	right = 45,
	left = 45,
},
	name = '面板-古风2',
	decoration_image = '',
	is_decoration = false,
	style = 'image/rect/面板-古风2.png',
	layout = {
	col_self = 'start',
	width = 400,
	height = 400,
	row_self = 'start',
},
}}
components['$$gameui.template@gui_ctrl.gf_3_major_btn'] = {url = '@gameui.component', com_name = 'normal_btn', template = {
	active_image = 'image/btn/gf_3_major_active.png',
	layout = {
	col_self = 'start',
	width = 250,
	height = 100,
	row_self = 'start',
},
	border = {
	top = 0,
	bottom = 0,
	right = 110,
	left = 220,
},
	name = '按钮-古风3-主要',
	text_color = '#ffffff',
	text_opacity = 1,
	image = 'image/btn/gf_3_major.png',
	text = '默认',
}}
components['$$gameui.template@gui_ctrl.gf_3_minor_btn'] = {url = '@gameui.component', com_name = 'normal_btn', template = {
	active_image = 'image/btn/gf_3_minor_active.png',
	layout = {
	col_self = 'start',
	width = 250,
	height = 100,
	row_self = 'start',
},
	border = {
	top = 0,
	bottom = 0,
	right = 110,
	left = 220,
},
	name = '按钮-古风3-次要',
	text_color = '#ffffff',
	text_opacity = 1,
	image = 'image/btn/gf_3_minor.png',
	text = '默认',
}}
components['$$gameui.template@gui_ctrl.gf_3_rect'] = {url = '@gameui.component', com_name = 'normal_rect', template = {
	decoration_layout_right = {
	row_self = 'end',
	margin = {
	right = 6,
},
},
	decoration_layout_left = {
	row_self = 'start',
	margin = {
	left = 6,
},
},
	border = {
	top = 45,
	bottom = 45,
	right = 45,
	left = 45,
},
	name = '面板-古风3',
	decoration_image = 'image/rect/面板-古风3-花纹.png',
	is_decoration = true,
	style = 'image/rect/面板-古风3.png',
	layout = {
	col_self = 'start',
	width = 400,
	height = 400,
	row_self = 'start',
},
}}
components['$$gameui.template@gui_ctrl.input_paste'] = {url = '@gameui.component', com_name = 'input_paste', template = {
	text_input = '',
	name = '输入框',
	font_size = 24,
	placeholder = '占位符',
	color = '#FFFFFF',
	font_color = '#000000',
	layout = {
	col_self = 'start',
	width = 250,
	height = 100,
	row_self = 'start',
},
}}
components['$$gameui.template@gui_ctrl.msgbox'] = {url = '@gameui.component', com_name = 'msgbox', template = {
	msgbox_image = 'image/msgbox/msgbox_1.png',
	is_show_icon = true,
	name = 'GUI控件',
	msgbox_icon_image = 'image/msgbox/icon_1.png',
	msgbox_text = '默认通知框文本',
	style = 3,
	layout = {
	col_self = 'start',
	width = 600,
	height = 300,
	row_self = 'start',
},
}}
components['$$gameui.template@gui_ctrl.msgbox_btn'] = {url = '@gameui.component', com_name = 'msgbox_btn', template = {
	icon_image = '@gameui/image/msgbox/icon_1.png',
	btn_image = '@gameui/image/msgbox/btn_1.png',
	layout = {
	col_self = 'start',
	width = 250,
	height = 100,
	row_self = 'start',
},
	name = 'GUI控件',
	text = '默认',
}}
components['$$gameui.template@gui_ctrl.number_input_paste'] = {url = '@gameui.component', com_name = 'number_input_paste', template = {
	text_input = '',
	name = '数字输入框',
	font_size = 24,
	placeholder = '占位符',
	color = '#FFFFFF',
	font_color = '#000000',
	layout = {
	col_self = 'start',
	width = 250,
	height = 100,
	row_self = 'start',
},
}}
components['$$gameui.template@gui_ctrl.progress'] = {url = '@gameui.component', com_name = 'progress', template = {
	is_merge_text = true,
	progress_type = 'right',
	name = 'GUI控件',
	progress_text_show = true,
	progress_height = 20,
	name_height_prop = 20,
	progress_bg_image = '',
	value = 50,
	is_name_show = true,
	name_show = true,
	default_box_margin = 10,
	name_width_prop = 50,
	progress_width = 250,
	name_pos_prop = 'left',
	progress_color = '#ff0000',
	default_name_width = 50,
	is_name_show_real = true,
	description = 'ATK',
	name_width = 50,
	progress_bg_color = '#949494',
	value_max = 100,
	progress_image = '',
	layout = {
	col_self = 'start',
	width = 250,
	height = 30,
	row_self = 'start',
},
}}
components['$$gameui.template@gui_ctrl.sci_1_major_btn'] = {url = '@gameui.component', com_name = 'normal_btn', template = {
	active_image = 'image/btn/sci_1_major_active.png',
	layout = {
	col_self = 'start',
	width = 250,
	height = 100,
	row_self = 'start',
},
	border = {
	top = 30,
	bottom = 30,
	right = 40,
	left = 40,
},
	name = '按钮-科技1-主要',
	text_color = '#000000',
	text_opacity = 1,
	image = 'image/btn/sci_1_major.png',
	text = '默认',
}}
components['$$gameui.template@gui_ctrl.sci_1_minor_btn'] = {url = '@gameui.component', com_name = 'normal_btn', template = {
	active_image = 'image/btn/sci_1_minor_active.png',
	layout = {
	col_self = 'start',
	width = 250,
	height = 100,
	row_self = 'start',
},
	border = {
	top = 30,
	bottom = 30,
	right = 40,
	left = 40,
},
	name = '按钮-科技1-次要',
	text_color = '#000000',
	text_opacity = 1,
	image = 'image/btn/sci_1_minor.png',
	text = '默认',
}}
components['$$gameui.template@gui_ctrl.sci_1_rect'] = {url = '@gameui.component', com_name = 'normal_rect', template = {
	decoration_layout_right = {
	row_self = 'end',
},
	decoration_layout_left = {
	row_self = 'start',
},
	border = {
	top = 45,
	bottom = 45,
	right = 45,
	left = 45,
},
	name = '面板-科技1',
	decoration_image = '',
	is_decoration = false,
	style = 'image/rect/面板-科技1.png',
	layout = {
	col_self = 'start',
	width = 400,
	height = 400,
	row_self = 'start',
},
}}
components['$$gameui.template@gui_ctrl.sci_2_major_btn'] = {url = '@gameui.component', com_name = 'normal_btn', template = {
	active_image = 'image/btn/sci_2_major_active.png',
	layout = {
	col_self = 'start',
	width = 250,
	height = 100,
	row_self = 'start',
},
	border = {
	top = 30,
	bottom = 30,
	right = 40,
	left = 40,
},
	name = '按钮-科技2-主要',
	text_color = '#13141E',
	text_opacity = 1,
	image = 'image/btn/sci_2_major.png',
	text = '默认',
}}
components['$$gameui.template@gui_ctrl.sci_2_minor_btn'] = {url = '@gameui.component', com_name = 'normal_btn', template = {
	active_image = 'image/btn/sci_2_minor_active.png',
	layout = {
	col_self = 'start',
	width = 250,
	height = 100,
	row_self = 'start',
},
	border = {
	top = 30,
	bottom = 30,
	right = 40,
	left = 40,
},
	name = '按钮-科技2-次要',
	text_color = '#13141E',
	text_opacity = 1,
	image = 'image/btn/sci_2_minor.png',
	text = '默认',
}}
components['$$gameui.template@gui_ctrl.sci_2_rect'] = {url = '@gameui.component', com_name = 'normal_rect', template = {
	decoration_layout_right = {
	row_self = 'end',
},
	decoration_layout_left = {
	row_self = 'start',
},
	border = {
	top = 45,
	bottom = 45,
	right = 45,
	left = 45,
},
	name = '面板-科技2',
	decoration_image = '',
	is_decoration = false,
	style = 'image/rect/面板-科技2.png',
	layout = {
	col_self = 'start',
	width = 400,
	height = 400,
	row_self = 'start',
},
}}
components['$$gameui.template@gui_ctrl.sci_3_major_btn'] = {url = '@gameui.component', com_name = 'normal_btn', template = {
	active_image = 'image/btn/sci_3_major_active.png',
	layout = {
	col_self = 'start',
	width = 250,
	height = 100,
	row_self = 'start',
},
	border = {
	top = 0,
	bottom = 0,
	right = 0,
	left = 0,
},
	name = '按钮-科技3-主要',
	text_color = '#FFF8D7',
	text_opacity = 1,
	image = 'image/btn/sci_3_major.png',
	text = '默认',
}}
components['$$gameui.template@gui_ctrl.sci_3_minor_btn'] = {url = '@gameui.component', com_name = 'normal_btn', template = {
	active_image = 'image/btn/sci_3_minor_active.png',
	layout = {
	col_self = 'start',
	width = 250,
	height = 100,
	row_self = 'start',
},
	border = {
	top = 0,
	bottom = 0,
	right = 0,
	left = 0,
},
	name = '按钮-科技3-次要',
	text_color = '#CCCCCC',
	text_opacity = 1,
	image = 'image/btn/sci_3_minor.png',
	text = '默认',
}}
components['$$gameui.template@gui_ctrl.sci_3_rect'] = {url = '@gameui.component', com_name = 'normal_rect', template = {
	decoration_layout_right = {
	row_self = 'end',
},
	decoration_layout_left = {
	row_self = 'start',
},
	border = {
	top = 45,
	bottom = 45,
	right = 45,
	left = 45,
},
	name = '面板-科技3',
	decoration_image = '',
	is_decoration = false,
	style = 'image/rect/面板-科技3.png',
	layout = {
	col_self = 'start',
	width = 400,
	height = 400,
	row_self = 'start',
},
}}
components['$$gameui.template@gui_ctrl.simpleui_button'] = {url = '@gameui.component', com_name = 'simpleui_button', template = {
	visiblity = true,
	name = 'GUI控件',
	layout = {
	col_self = 'start',
	width = 50,
	height = 50,
	row_self = 'start',
},
	can_be_clicked = true,
	image = 'image/msgbox/btn_1.png',
	text = '按钮',
}}
components['$$gameui.template@gui_ctrl.simpleui_picture'] = {url = '@gameui.component', com_name = 'simpleui_picture', template = {
	visiblity = true,
	zoom_type = 'none',
	name = 'GUI控件',
	can_be_clicked = true,
	opacity = 0,
	image = 'image/msgbox/icon_1.png',
	layout = {
	col_self = 'start',
	width = 100,
	height = 50,
	row_self = 'start',
},
}}
components['$$gameui.template@gui_ctrl.simpleui_text'] = {url = '@gameui.component', com_name = 'simpleui_text', template = {
	visiblity = true,
	auto_line_feed = true,
	can_be_clicked = true,
	name = 'GUI控件',
	font_size = 5,
	layout = {
	col_self = 'start',
	width = 50,
	height = 50,
	row_self = 'start',
},
}}
components['$$gameui.template@gui_ctrl.timershow'] = {url = '@gameui.component', com_name = 'timershow', template = {
	layout = {
	col_self = 'start',
	width = -1,
	height = 56,
	direction = 'row',
},
	image = 'image/Bg_daojishi_di.png',
	name = 'GUI控件',
}}
components['$$gameui.template@gui_ctrl.xf_1_major_btn'] = {url = '@gameui.component', com_name = 'normal_btn', template = {
	active_image = 'image/btn/xf_1_major_active.png',
	layout = {
	col_self = 'start',
	width = 250,
	height = 100,
	row_self = 'start',
},
	border = {
	top = 30,
	bottom = 30,
	right = 40,
	left = 40,
},
	name = '按钮-西方1-主要',
	text_color = '#FFFFFF',
	text_opacity = 1,
	image = 'image/btn/xf_1_major.png',
	text = '默认',
}}
components['$$gameui.template@gui_ctrl.xf_1_minor_btn'] = {url = '@gameui.component', com_name = 'normal_btn', template = {
	active_image = 'image/btn/xf_1_minor_active.png',
	layout = {
	col_self = 'start',
	width = 250,
	height = 100,
	row_self = 'start',
},
	border = {
	top = 30,
	bottom = 30,
	right = 40,
	left = 40,
},
	name = '按钮-西方1-次要',
	text_color = '#FFFFFF',
	text_opacity = 1,
	image = 'image/btn/xf_1_minor.png',
	text = '默认',
}}
components['$$gameui.template@gui_ctrl.xf_1_rect'] = {url = '@gameui.component', com_name = 'normal_rect', template = {
	decoration_layout_right = {
	row_self = 'end',
},
	decoration_layout_left = {
	row_self = 'start',
},
	border = {
	top = 45,
	bottom = 45,
	right = 45,
	left = 45,
},
	name = '面板-西方1',
	decoration_image = '',
	is_decoration = false,
	style = 'image/rect/面板-西方1.png',
	layout = {
	col_self = 'start',
	width = 400,
	height = 400,
	row_self = 'start',
},
}}
components['$$gameui.template@gui_ctrl.xf_2_major_btn'] = {url = '@gameui.component', com_name = 'normal_btn', template = {
	active_image = 'image/btn/xf_2_major_active.png',
	layout = {
	col_self = 'start',
	width = 250,
	height = 100,
	row_self = 'start',
},
	border = {
	top = 30,
	bottom = 30,
	right = 40,
	left = 40,
},
	name = '按钮-西方1-主要',
	text_color = '#2A2D3C',
	text_opacity = 1,
	image = 'image/btn/xf_2_major.png',
	text = '默认',
}}
components['$$gameui.template@gui_ctrl.xf_2_minor_btn'] = {url = '@gameui.component', com_name = 'normal_btn', template = {
	active_image = 'image/btn/xf_2_minor_active.png',
	layout = {
	col_self = 'start',
	width = 250,
	height = 100,
	row_self = 'start',
},
	border = {
	top = 30,
	bottom = 30,
	right = 40,
	left = 40,
},
	name = '按钮-西方2-次要',
	text_color = '#FFFFFF',
	text_opacity = 1,
	image = 'image/btn/xf_2_minor.png',
	text = '默认',
}}
components['$$gameui.template@gui_ctrl.xf_2_rect'] = {url = '@gameui.component', com_name = 'normal_rect', template = {
	decoration_layout_right = {
	row_self = 'end',
},
	decoration_layout_left = {
	row_self = 'start',
},
	border = {
	top = 130,
	bottom = 30,
	right = 128,
	left = 128,
},
	name = '面板-西方2',
	decoration_image = '',
	is_decoration = false,
	style = 'image/rect/面板-西方2.png',
	layout = {
	col_self = 'start',
	width = 400,
	height = 400,
	row_self = 'start',
},
}}
components['$$gameui.template@gui_ctrl.xf_3_major_btn'] = {url = '@gameui.component', com_name = 'normal_btn', template = {
	active_image = 'image/btn/xf_3_major_active.png',
	layout = {
	col_self = 'start',
	width = 250,
	height = 100,
	row_self = 'start',
},
	border = {
	top = 30,
	bottom = 30,
	right = 40,
	left = 40,
},
	name = '按钮-西方3-主要',
	text_color = '#FFFFFF',
	text_opacity = 1,
	image = 'image/btn/xf_3_major.png',
	text = '默认',
}}
components['$$gameui.template@gui_ctrl.xf_3_minor_btn'] = {url = '@gameui.component', com_name = 'normal_btn', template = {
	active_image = 'image/btn/xf_3_minor_active.png',
	layout = {
	col_self = 'start',
	width = 250,
	height = 100,
	row_self = 'start',
},
	border = {
	top = 30,
	bottom = 30,
	right = 40,
	left = 40,
},
	name = '按钮-西方3-次要',
	text_color = '#FFFFFF',
	text_opacity = 1,
	image = 'image/btn/xf_3_minor.png',
	text = '默认',
}}
components['$$gameui.template@gui_ctrl.xf_3_rect'] = {url = '@gameui.component', com_name = 'normal_rect', template = {
	decoration_layout_right = {
	row_self = 'end',
},
	decoration_layout_left = {
	row_self = 'start',
},
	border = {
	top = 45,
	bottom = 45,
	right = 45,
	left = 45,
},
	name = '面板-西方3',
	decoration_image = '',
	is_decoration = false,
	style = 'image/rect/面板-西方3.png',
	layout = {
	col_self = 'start',
	width = 400,
	height = 400,
	row_self = 'start',
},
}}
components['$$lib_control.template@gui_ctrl.交互摇杆'] = {url = '@lib_control.component', com_name = '交互摇杆', template = {
	name = 'GUI控件',
	skill_charge_cool = '@defaultui/image/control/开启技能框.png',
	shortcut_key_bg = '@defaultui/image/panel/底框_快捷键.png',
	cast_slider_panel_disable = '@defaultui/image/control/禁止施法.png',
	cast_slider_panel = '@defaultui/image/control/施法轮盘.png',
	skill_locked = '@defaultui/image/control/锁定技能框.png',
	skill_normal = '@defaultui/image/control/默认技能框2.png',
	skill_stack_bg = '@defaultui/image/control/技能_等级.png',
	center_ratio = 0.926,
	vj_panel_crop_margin = -9999,
	vj_panel_scale = 1,
	press_region_type = 1,
	cast_slider = '@defaultui/image/control/施法摇杆.png',
	skill_cool = '@defaultui/image/control/冷却.png',
	is_vj_center = true,
	skill_click = '@defaultui/image/control/点击技能框.png',
	can_press_on_cool = true,
	outer_ratio = 1.022,
	skill_disable = '@defaultui/image/control/禁用技能框.png',
	skill_toggleon = '@defaultui/image/control/开启技能框.png',
	skill_icon_mask = '@defaultui/image/control/冷却.png',
	active_percent = 0.15,
	layout = {
	col_self = 'end',
	width = 150,
	relative = {
	['1'] = 0,
	['2'] = 0,
},
	height = 150,
	row_self = 'end',
},
}}
components['$$lib_control.template@gui_ctrl.技能摇杆'] = {url = '@lib_control.component', com_name = '技能摇杆', template = {
	name = 'GUI控件',
	skill_charge_cool = '@defaultui/image/control/开启技能框.png',
	shortcut_key_bg = '@defaultui/image/panel/底框_快捷键.png',
	cast_slider_panel_disable = '@defaultui/image/control/禁止施法.png',
	cast_slider_panel = '@defaultui/image/control/施法轮盘.png',
	skill_locked = '@defaultui/image/control/锁定技能框.png',
	skill_normal = '@defaultui/image/control/默认技能框2.png',
	skill_stack_bg = '@defaultui/image/control/技能_等级.png',
	center_ratio = 0.926,
	vj_panel_crop_margin = -9999,
	vj_panel_scale = 1,
	press_region_type = 1,
	cast_slider = '@defaultui/image/control/施法摇杆.png',
	skill_cool = '@defaultui/image/control/冷却.png',
	is_vj_center = true,
	skill_click = '@defaultui/image/control/点击技能框.png',
	can_press_on_cool = true,
	outer_ratio = 1.022,
	skill_disable = '@defaultui/image/control/禁用技能框.png',
	skill_toggleon = '@defaultui/image/control/开启技能框.png',
	skill_icon_mask = '@defaultui/image/control/冷却.png',
	active_percent = 0.15,
	layout = {
	col_self = 'end',
	width = 150,
	relative = {
	['1'] = 0,
	['2'] = 0,
},
	height = 150,
	row_self = 'end',
},
}}
components['$$lib_control.template@gui_ctrl.技能摇杆组'] = {url = '@lib_control.component', com_name = '技能摇杆组', template = {
	name = 'GUI控件',
	total_angle_delta = 120,
	base_x = -150,
	skill_cool = '@defaultui/image/control/冷却.png',
	active_percent = 0.15,
	skill_normal = '@defaultui/image/control/默认技能框2.png',
	skill_stack_bg = '@defaultui/image/control/技能_等级.png',
	center_ratio = 0.926,
	attack_button_size = 250,
	press_region_type = 1,
	is_vj_center = true,
	skill_click = '@defaultui/image/control/点击技能框.png',
	skill_toggleon = '@defaultui/image/control/开启技能框.png',
	auto_bind_key = true,
	skill_charge_cool = '@defaultui/image/control/开启技能框.png',
	shortcut_key_bg = '@defaultui/image/panel/底框_快捷键.png',
	cast_slider_panel_disable = '@defaultui/image/control/禁止施法.png',
	skill_disable = '@defaultui/image/control/禁用技能框.png',
	init_angle = -15,
	button_size = 150,
	skill_attack_normal = '@lib_control/image/control/Bth_ingame_gongjidi.png',
	vj_panel_scale = 1,
	base_y = -120,
	cast_slider = '@defaultui/image/control/施法摇杆.png',
	outer_ratio = 1.022,
	can_press_on_cool = true,
	max_skill_count = 99,
	cast_slider_panel = '@defaultui/image/control/施法轮盘.png',
	vj_panel_crop_margin = -9999,
	min_around_dis = 350,
	skill_locked = '@defaultui/image/control/锁定技能框.png',
	skill_icon_mask = '@defaultui/image/control/冷却.png',
	layout = {
	col_self = 'end',
	relative = {
	['1'] = 0,
	['2'] = 0,
},
	grow_height = 1,
	grow_width = 0.5,
	row_self = 'end',
},
}}
components['$$lib_control.template@gui_ctrl.lib_control_main'] = {url = '@@.gui.page.lib_control_main.component', is_page = true, template_url = '@@.gui.page.lib_control_main.template'}
components['$$lib_control.template@gui_ctrl.施法进度条'] = {url = '@lib_control.component', com_name = '施法进度条', template = {
	break_delay = 200,
	name = 'GUI控件',
	complete_delay = 300,
	progress_bg_image = '@defaultui/image/control/Bar_ingame_shifatiaodi.png',
	progress_bar_image = '@defaultui/image/control/Bar_ingame_shifatiao.png',
	layout = {
	col_self = 'end',
	width = 688,
	relative = {
	['1'] = 0,
	['2'] = -178,
},
	height = 20,
	row_self = 'center',
},
}}
components['$$lib_control.template@gui_ctrl.摇杆'] = {url = '@lib_control.component', com_name = '摇杆', template = {
	vj_main_move_ratio = 1,
	vj_bg_toggle_show = false,
	name = 'GUI控件',
	vj_main_toggle_show = false,
	vj_bg_image = '@defaultui/image/joystick/Bg_ingame_yaogan.png',
	vj_is_press_center = true,
	vj_relative_y = 0,
	vj_press_region_type = 0,
	vj_relative_x = 0,
	vj_active_percent = 0.2,
	vj_main_size = 127,
	vj_is_release_reset = true,
	vj_size = 288,
	vj_main_move_radius = 0.146,
	vj_main_image = '@defaultui/image/joystick/Bth_ingame_yaogan1.png',
}}
components['$$lib_control.template@gui_ctrl.移动键盘'] = {url = '@lib_control.component', com_name = '移动键盘', template = {
	img_A_on = '@defaultui/image/keyboard/A_on.png',
	name = 'GUI控件',
	img_D_off = '@defaultui/image/keyboard/D_off.png',
	img_W_off = '@defaultui/image/keyboard/W_off.png',
	img_D_on = '@defaultui/image/keyboard/D_on.png',
	img_S_on = '@defaultui/image/keyboard/S_on.png',
	img_W_on = '@defaultui/image/keyboard/W_on.png',
	img_S_off = '@defaultui/image/keyboard/S_off.png',
	img_A_off = '@defaultui/image/keyboard/A_off.png',
}}
components['$$lib_control.template@gui_ctrl.移动摇杆'] = {url = '@lib_control.component', com_name = '移动摇杆', template = {
	slider_size = 288,
	slider_bg_image = '@defaultui/image/joystick/Bg_ingame_yaogan.png',
	name = 'GUI控件',
	vj_toggle_show = false,
	is_main_slider = false,
	slow_rate = 0.35,
	vj_is_main_slider = true,
	slider_image = '@defaultui/image/joystick/Bth_ingame_yaogan1.png',
	vj_move_ratio = 1,
	layout = {
	col_self = 'end',
	relative = {
	['1'] = 0,
	['2'] = 0,
},
	grow_height = 1,
	grow_width = 0.5,
	row_self = 'start',
},
	vj_auto_move = false,
	vj_active_percent = 0.2,
	slider_relative_y = -113,
	vj_slider_width = 59,
	vj_is_press_center = true,
	slider_relative_x = 296,
	vj_press_region_type = 0,
	toggle_show = false,
	vj_slider_height = 59,
	vj_slow_percent = 0,
	vj_is_release_reset = true,
	vj_stop_percent = 0,
	slider_mini_image = '@defaultui/image/joystick/Bth_ingame_yaogan3.png',
	vj_move_radius = 0.146,
}}
components['$$lib_control.template@gui_ctrl.中止施法区域'] = {url = '@lib_control.component', com_name = '中止施法区域', template = {
	layout = {
	col_self = 'start',
	width = 117,
	relative = {
	['1'] = -200,
	['2'] = 200,
},
	height = 117,
	row_self = 'end',
},
	image = '@defaultui/image/control/取消施法区域.png',
	name = 'GUI控件',
}}
components['$$lib_game_options.template@gui_ctrl.设置按钮'] = {url = '@lib_game_options.component', com_name = '设置按钮', template = {
	show = true,
	layout = {
	col_self = 'start',
	width = 500,
	relative = {
	['1'] = -100,
	['2'] = 200,
},
	height = 500,
	row_self = 'end',
},
	name = 'GUI控件',
}}
components['$$smallcard_choose_one.template@gui_ctrl.N选1_关闭面板'] = {url = '@smallcard_choose_one.component', com_name = 'N选1_关闭面板', template = {
	layout = {
	col_self = 'center',
	height = 48,
	width = 48,
	row_self = 'center',
},
	name = 'GUI控件',
}}
components['$$smallcard_choose_one.template@gui_ctrl.N选1_确认按钮'] = {url = '@smallcard_choose_one.component', com_name = 'N选1_确认按钮', template = {
	layout = {
	width = 317,
	height = 87,
},
	name = 'GUI控件',
}}
components['$$smallcard_choose_one.template@gui_ctrl.N选1_选项'] = {url = '@smallcard_choose_one.component', com_name = 'N选1_选项', template = {
	layout = {
	width = 339,
	margin = {
	left = 37,
	right = 37,
},
	height = 711,
},
	name = 'GUI控件',
}}
components['$$smallcard_choose_one.template@gui_ctrl.N选1_选项描述'] = {url = '@smallcard_choose_one.component', com_name = 'N选1_选项描述', template = {
	layout = {
	width = 300,
	height = -1,
},
	name = 'GUI控件',
}}
components['$$smallcard_choose_one.template@gui_ctrl.N选1_选项名称'] = {url = '@smallcard_choose_one.component', com_name = 'N选1_选项名称', template = {
	layout = {
	width = -1,
	height = 36,
},
	name = 'GUI控件',
}}
components['$$smallcard_choose_one.template@gui_ctrl.N选1_选项图标'] = {url = '@smallcard_choose_one.component', com_name = 'N选1_选项图标', template = {
	layout = {
	width = 112,
	height = 112,
},
	name = 'GUI控件',
}}
components['$$smallcard_choose_one.template@gui_ctrl.N选1_选择面板'] = {url = '@smallcard_choose_one.component', com_name = 'N选1_选择面板', template = {
	layout = {
	grow_width = 1,
	grow_height = 1,
},
	name = 'GUI控件',
}}
components['$$smallcard_choose_one.template@gui_ctrl.N选1_整体面板'] = {url = '@smallcard_choose_one.component', com_name = 'N选1_整体面板', template = {
	layout = {
	grow_width = 1,
	grow_height = 1,
},
	name = 'GUI控件',
}}
components['$$smallcard_inventory.template@gui_ctrl.背包入口'] = {url = '@smallcard_inventory.component', com_name = '背包入口', template = {
	show = true,
	layout = {
	col_self = 'start',
	width = 64,
	relative = {
	['1'] = -422,
	['2'] = 29,
},
	height = 64,
	row_self = 'end',
},
	name = 'GUI控件',
}}
components['$$smallcard_inventory.template@gui_ctrl.多功能格子'] = {url = '@smallcard_inventory.component', com_name = '多功能格子', template = {
	name = 'GUI控件',
	bind_item_link = '',
	show_tips = true,
	show_num = true,
	can_use = true,
	show_bg = true,
	show_frame = true,
	skill_cool = '',
	bind_loot_link = '',
}}
components['$$smallcard_inventory.template@gui_ctrl.模块背包'] = {url = '@smallcard_inventory.component', com_name = '模块背包', template = {
	parameter = '',
	inv_link = '',
	name = 'GUI控件',
}}
components['$$smallcard_inventory.template@gui_ctrl.拾取按钮'] = {url = '@smallcard_inventory.component', com_name = '拾取按钮', template = {
	name = 'GUI控件',
}}
components['$$smallcard_inventory.template@gui_ctrl.拾取列表'] = {url = '@smallcard_inventory.component', com_name = '拾取列表', template = {
	name = 'GUI控件',
}}
components['$$smallcard_inventory.template@gui_ctrl.自定义背包格子'] = {url = '@smallcard_inventory.component', com_name = '自定义背包格子', template = {
	drop_mode = true,
	layout = {
	width = 156,
	height = 156,
},
	name = 'GUI控件',
}}
components['$$smallcard_inventory.template@gui_ctrl.自定义背包面板'] = {url = '@smallcard_inventory.component', com_name = '自定义背包面板', template = {
	drop_mode = true,
	inv_link = '',
	layout = {
	width = 600,
	height = 600,
},
	name = 'GUI控件',
}}
components['$$.template@gui_ctrl.button'] = {url = '@common.base.gui.ctrl_wrapper', com_name = 'button', template = {
}}
components['$$.template@gui_ctrl.input'] = {url = '@common.base.gui.ctrl_wrapper', com_name = 'input', template = {
}}
components['$$.template@gui_ctrl.label'] = {url = '@common.base.gui.ctrl_wrapper', com_name = 'label', template = {
}}
components['$$.template@gui_ctrl.GuiCtrl'] = {url = "@@.gui.page.MainPage.component", is_page = true}
components['$$.template@gui_ctrl.minimap_canvas'] = {url = '@common.base.gui.ctrl_wrapper', com_name = 'minimap_canvas', template = {
}}
components['$$.template@gui_ctrl.panel'] = {url = '@common.base.gui.ctrl_wrapper', com_name = 'panel', template = {
}}
components['$$.template@gui_ctrl.particle'] = {url = '@common.base.gui.ctrl_wrapper', com_name = 'particle', template = {
}}
components['$$.template@gui_ctrl.progress'] = {url = '@common.base.gui.ctrl_wrapper', com_name = 'progress', template = {
}}
components['$$.template@gui_ctrl.sprites'] = {url = '@common.base.gui.ctrl_wrapper', com_name = 'sprites', template = {
}}
return components