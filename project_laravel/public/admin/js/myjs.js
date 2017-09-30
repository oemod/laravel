function ckeditor(name) {
	var editor = CKEDITOR.replace(name,{
		uiColor: '#9AB8F3',
		language: 'vi',
		filebrowserBrowseUrl : '/public/admin/js/ckfinder/ckfinder.html',
		filebrowserImageBrowseUrl : '/public/admin/js/ckfinder/ckfinder.html?type=Images',
		filebrowserFlashBrowseUrl : '/public/admin/js/ckfinder/ckfinder.html?type=Flash',
		filebrowserUploadUrl : '/public/admin/js/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files',
		filebrowserImageUploadUrl : '/public/admin/js/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images',
		filebrowserFlashUploadUrl : '/public/admin/js/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash'
	});
}
