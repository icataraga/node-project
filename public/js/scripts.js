var post = {
    getBrand: function($this)
    {
        var brandId = $($this).val();
        var model = $('#model');
        var modelVariant = $('#modelVariant');
        model.empty();        
        modelVariant.empty();
        model.append($("<option />").val(-1).text("Select"));
        $.get('/users/post/?brand=' + (brandId), function(data){
            $.each(data, function() {
                model.append($("<option />").val(this.id).text(this.title));
            });
        });
    },
    getModel: function($this)
    {
        var modelId = $($this).val();
        var modelVariant = $('#modelVariant');
        modelVariant.empty();
        modelVariant.append($("<option />").val(-1).text("Select"));
        $.get('/users/post/?model=' + (modelId), function(data){
            $.each(data, function() {
                modelVariant.append($("<option />").val(this.id).text(this.title));
            });
        });
    }
}


