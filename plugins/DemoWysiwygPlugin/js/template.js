!function ($) {

  var handleUnifiedInsertTemplateClick = function(event) {
    event.preventDefault();
    event.stopPropagation();
    // Retrieve the inner HTML of the template and insert in editor
    var html = $("#template")[0].innerHTML.replace(/contenteditable="true"/gi, '');
    $.jalios.UnifiedInsert.insertHTML(html);
  };
  
  $(document).ready(function() {
	// Transform all element with the "contenteditable" class into real content editable element
	$(".contenteditable").attr("contenteditable", "true").removeClass('contenteditable');
	
	// Register insertion action on element (button,link) click 
    $(document).on('click', ".unifiedinsert-template", handleUnifiedInsertTemplateClick);
  });

}(window.jQuery);
