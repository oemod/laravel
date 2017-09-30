function ckeditor(name) {
	var editor = CKEDITOR.replace(name,{
		uiColor: '#9AB8F3',
		language: 'vi',
		filebrowserImageBrowseUrl : '../../public/admin/js/ckfinder/ckfinder.html?type=Images',
		filebrowserFlashBrowseUrl :	'../../public/admin/js/ckfinder.html?type=Flash',
		filebrowserImageUploadUrl : '../../public/admin/js/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images',
		filebrowserFlashUploadUrl : '../../public/admin/js/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash',
		toolbar:[
		['Source','-','Save','NewPage','Preview','-','Templates'],
		['Cut','Copy','Paste','PasteFormWord','-','Print'],
		['Undo','Redo','-','Find','Replace','-','SelectAll','RemoveFormat'],
		['Form','Checkbox','Radio','TextField','Textarea','Select','Button','HiddenField'],
		['Bold','Italic','UnderLine','Sticke','-','Subscript','Superscript'],
		['NumberedList','BulletedList','-','Outdent','Indent','Blockquote','CreateDiv'],
		['JustifyLeft','JustifyCenter','JustifyRight','JustifyBlock'],
		['Link','Unlink','Anchor'],
		['Image','Flash','Table','HorizontalRule','Smiley','SpecialChat','PageBreak'],
		['Styles','Format','Font','FontSize'],
		['TextColor','BGColor'],
		['Maximize','ShowBlocks','-','Block']
		]
	});
}