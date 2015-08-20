<?php

function getIcons ()
{
	$return = '<svg id="svg-source" height="0" version="1.1" 
  xmlns="http://www.w3.org/2000/svg" style="position:absolute; margin-left: -100%" 
  xmlns:xlink="http://www.w3.org/1999/xlink">';
  	$return .= getEditIcon();
	$return .= getDeleteIcon();
	$return .= getAttentionIcon();
	//$return .= getCopyIcon();
	$return .= getQuestionIcon();
  	$return .= '</svg>';
	return $return;
}

function getEditIcon()
{
	return '<g id="edit_icon">
    <path d="M28.755,3.311c-4.186-4.188-6.375-1.539-7.057-0.857
        c-0.002,0.002-0.002,0.006-0.004,0.008L5,19.176c-0.255,0.283-0.425,0.547-0.596,0.986l-1.541,4.436L2,28.676
        c0.007-0.002,0.013,0,0.02,0c-0.033,0.391,0.079,0.779,0.362,1.066c0.282,0.285,0.667,0.396,1.054,0.363c0,0.006,0,0.014,0,0.02
        l3.813-0.814l3.957-1.35c0.846-0.309,1.872-0.986,2.348-1.471c0.003-0.004,0.008-0.006,0.011-0.008l11.551-11.574
        c0.018-0.012,0.045-0.012,0.06-0.027c0.015-0.014,0.015-0.043,0.027-0.059l2.417-2.422c0.025-0.02,0.061-0.025,0.083-0.047
        c0.022-0.022,0.027-0.059,0.047-0.083l1.844-1.847c0.013-0.011,0.033-0.011,0.045-0.023C30.317,9.718,32.94,7.5,28.755,3.311z
         M11.212,26.246c-1.691,0.715-4.626,1.672-4.626,1.672l-2.299-2.301c0,0,0.868-2.846,1.588-4.553
        c0.442-1.047,0.878-1.287,0.878-1.287c1,0.469,2.185,1.283,3.24,2.338c1.105,1.105,1.938,2.334,2.396,3.35
        C12.388,25.465,11.89,25.959,11.212,26.246z M10.751,19.191c0,0-0.461-0.348-0.928-0.617c-0.449-0.26-0.903-0.441-0.903-0.441
        L20.96,6.092c0,0,0.43,0.1,0.82,0.359c0.469,0.312,0.915,0.795,0.915,0.795L10.751,19.191z M28.807,8.35l-0.005,0.005
        c-0.007,0.007-0.009,0.019-0.016,0.025s-0.018,0.009-0.025,0.016l-1.397,1.405c-0.48-0.897-1.224-1.9-2.188-2.866
        c-0.967-0.966-1.971-1.709-2.868-2.19l1.431-1.433l0.004,0.004c0.605-0.583,2.212,0.063,3.6,1.452
        C28.717,6.144,29.36,7.73,28.807,8.35L28.807,8.35z"></path>
  </g>';
}

function getDeleteIcon()
{
	return '<g id="delete_icon">
    <path d="M14,6h4v1h3V6c0-1.657-1.343-3-3-3h-4c-1.657,0-3,1.343-3,3v1h3V6z M25,8H7
        c-1.104,0-2,0.896-2,2v1c0,1.028,0.779,1.865,1.777,1.978L8.083,27c0,1.657,1.344,3,3,3h9.75c1.657,0,3-1.343,3-3l1.375-14.021
        C26.213,12.874,27,12.033,27,11v-1C27,8.896,26.104,8,25,8z M12.116,27c-0.559,0-1.061-0.569-1.122-1.272L9.933,14.272
        C9.871,13.569,10.274,13,10.832,13c0.559,0,1.061,0.569,1.121,1.272l1.062,11.455C13.076,26.431,12.674,27,12.116,27z M17,25.728
        C17,26.431,16.553,27,16,27s-1-0.569-1-1.272V14.272C15,13.569,15.447,13,16,13s1,0.569,1,1.272V25.728z M21.006,25.728
        C20.944,26.431,20.442,27,19.884,27c-0.558,0-0.96-0.569-0.899-1.272l1.062-11.455C20.107,13.569,20.609,13,21.168,13
        c0.558,0,0.961,0.569,0.899,1.272L21.006,25.728z"></path>
  </g>';
}

function getAttentionIcon()
{
	return '<g id="attention_icon">
    <path d="M31.016,26.385c0,1.412-0.972,2.556-2.184,2.605c0,0.003,0,0.006,0.001,0.009
        H3.271v-0.001c-0.003,0-0.006,0.001-0.009,0.001C2.014,28.999,1,27.829,1,26.385c0-0.658,0.218-1.252,0.565-1.712L13.894,4.295
        c0.007,0.003,0.015,0.006,0.021,0.01C14.264,3.537,15.069,3,16.008,3c0.939,0,1.744,0.537,2.092,1.305
        c0.008-0.004,0.016-0.007,0.022-0.01l12.31,20.348c-0.001,0.001-0.001,0.001-0.002,0.002C30.79,25.107,31.016,25.713,31.016,26.385z
         M18.008,11.999c0-0.552-0.447-1-1-1h-2c-0.553,0-1,0.448-1,1v7c0,0.553,0.447,1,1,1h2c0.553,0,1-0.447,1-1V11.999z M18.008,22.999
        c0-0.553-0.447-1-1-1h-2c-0.553,0-1,0.447-1,1v1c0,0.553,0.447,1,1,1h2c0.553,0,1-0.447,1-1V22.999z"></path>
  </g>';
}

function getCopyIcon()
{
	return '<g id="copy_icon">
    <path d="M25,1H12c-1.657,0-3,1.343-3,3v3H7c-1.657,0-3,1.343-3,3v18c0,1.657,1.343,3,3,3
        h13c1.657,0,3-1.343,3-3v-3h2c1.657,0,3-1.343,3-3V4C28,2.343,26.657,1,25,1z M20,28H7V10h2v12c0,0.221,0.027,0.435,0.072,0.642
        C9.029,22.754,9,22.873,9,23c0,0.458,0.314,0.828,0.734,0.946C10.284,24.586,11.09,25,12,25h8V28z M25,22H12V4h13V22z M15,12h7
        c0.553,0,1-0.447,1-1c0-0.552-0.447-1-1-1h-7c-0.553,0-1,0.448-1,1C14,11.553,14.447,12,15,12z M15,9h3c0.553,0,1-0.447,1-1
        c0-0.552-0.447-1-1-1h-3c-0.553,0-1,0.448-1,1C14,8.553,14.447,9,15,9z M15,15h4c0.553,0,1-0.447,1-1c0-0.552-0.447-1-1-1h-4
        c-0.553,0-1,0.448-1,1C14,14.553,14.447,15,15,15z M15,18h7c0.553,0,1-0.447,1-1c0-0.552-0.447-1-1-1h-7c-0.553,0-1,0.448-1,1
        C14,17.553,14.447,18,15,18z"></path>
  </g>';
	
}

function getQuestionIcon()
{
	return '<g id="question_icon">
    <path d="M16,30C8.268,30,2,23.732,2,16C2,8.269,8.268,2,16,2s14,6.269,14,14
        C30,23.732,23.732,30,16,30z M13.072,24.426c0.357,0.391,0.844,0.586,1.459,0.586c0.63,0,1.145-0.195,1.544-0.586
        c0.398-0.39,0.614-0.895,0.647-1.516c0.034-0.656-0.128-1.171-0.486-1.543c-0.359-0.372-0.854-0.559-1.484-0.559
        c-0.614,0-1.121,0.187-1.519,0.559s-0.614,0.887-0.649,1.543C12.552,23.531,12.715,24.036,13.072,24.426z M21.044,8.883
        c-3.055-3.154-7.708-1.565-9.534-0.758c-0.014,0.013-0.025,0.026-0.045,0.036c-0.506,0.246-0.539,0.593-0.323,1.147l0.675,1.314
        c0.012,0.014,0.026,0.024,0.036,0.045c0.256,0.525,0.611,0.541,1.185,0.294c0.742-0.354,1.898-0.801,3.104-0.85
        c2.026-0.082,3.069,1.266,1.465,2.847c-1.527,1.504-4.17,2.394-4.425,6.044l-0.004,0.004c0,0.331,0.265,0.6,0.592,0.6h2.366
        c0.327,0,0.592-0.269,0.592-0.6V18.82c0.125-0.693,0.615-1.763,2.299-2.887C21.877,14.028,22.985,10.887,21.044,8.883z"></path>
  </g>';
	
}


?>

