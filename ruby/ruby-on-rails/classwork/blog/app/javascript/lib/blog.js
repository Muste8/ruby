$(function(){
    // alert('jQuery is working');

    //form validation for comment body
    $('#comment-body').on('input', function(){
        console.log('hello');
        const value = $(this).val().trim();
        const submitButton = $(this).closest('form').find('input[type="submit"]')

        if (value === ''){
            $(this).css('border-color', 'red');
            submitButton.prop('disabled', true);
        } else {
            $(this).css('border-color', '');
            submitButton.prop('disabled', false); 
        }
    });

    //Dynamic content loading for comments
    $('#load-comments').on('click', function(){
        const categoryId = $('#category-id').data('category');
        const articleId = $('#load-comments').data('article');
        console.log(categoryId);
        console.log(articleId);
        const url = `/categories/${categoryId}/articles/${articleId}/comments`
        console.log($.getJSON(url));
        $.getJSON(url, function(data){
            console.log(data)
            // Append the new comments to the container #comments
            var isEmpty = $('#comments').html() === "";
            if (isEmpty){
                for(let i = 0; i < data.length; i++){
                    // I didn't have a container called #comments. So I created one.
                    $('#comments').append(`<strong>commenter:</strong> ${data[i].commenter}<br><strong>body:</strong> ${data[i].body}<br>`);
                };
            };

            // add .fail callback to handle error messaging
        })
    });
});