!function($) {
  tinymce.PluginManager.add('wordcounter', function(editor, url) {

    
    // Register the button so it can be declared in the toolbar configuration
    editor.addButton('countword', {
      tooltip : 'wordcounter.btn.tooltip', // I18N property name, declared in en.prop/fr.prop without the "wysiwyg.plugins." prefix     
      icon : 'icomoon icomoon-ruler', // Icon name from icon set available in JPlatform (Glyphicon, Icomoon, ...)
      
      // Action performed when button is clicked
      onclick : function() {

        // Count word in selection
        var selectedText = tinymce.activeEditor.selection.getContent({ format : 'text' });
        var wordCount = selectedText ? selectedText.split(' ').length : 0;

        // Display result as a TinyMCE notification
        editor.notificationManager.open({
          text : editor.translate(["wordcounter.message", wordCount]), // I18N property name, declared in en.prop/fr.prop without the "wysiwyg.plugins." prefix
          type : 'info',
          timeout: 5000
        });
      },
      
      // Enable the button only when text is selected, disabled by default
      disabled: true,      
      onPostRender : function() {
        var btn = this;
        editor.on('NodeChange', function(e) {
          btn.disabled(tinymce.activeEditor.selection.isCollapsed());
        });
      }
    });

    
  });
}(window.jQuery);