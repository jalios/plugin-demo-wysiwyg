!function($) {
  tinymce.PluginManager.add('wordcounter', function(editor, url) {
  
    // Register the button so it can be declared in the toolbar configuration
    editor.ui.registry.addIcon('countword', '<span class="jalios-icon icomoon-ruler"></span>' );
    editor.ui.registry.addButton('countword', {
      tooltip : 'wordcounter.btn.tooltip', // I18N property name, declared in en.prop/fr.prop without the "wysiwyg.plugins." prefix     
      icon : 'countword', // Icon registered with addIcon just above
      
      // Action performed when button is clicked
      onAction : function(buttonApi) {

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
      onSetup : function(buttonApi) {
        const nodeChangeHandler = function (eventApi) {
          buttonApi.setDisabled(tinymce.activeEditor.selection.isCollapsed());
        };
        editor.on('NodeChange', nodeChangeHandler);
        return function (buttonApi) {
          editor.off('NodeChange', nodeChangeHandler);
        }
      }
      
    });

    
  });
}(window.jQuery);