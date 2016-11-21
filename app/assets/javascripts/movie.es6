CombatAcesApp.Movie  = class{
	constructor(id){
		this.id = id;
	}
	render(){
		console.log("Rendering movie: #" + this.id);
		$.ajax({
			url: "/api/movies/" + this.id,
			success: loadMovieModal
				
		});
	};
}

function loadMovieModal(response){
	console.log("Movie info:");
	console.log(response);

	$('.js-movie-name').text(response.movie.name);
	$('.js-year').text(response.movie.year);
	var tagline = response.movie.tagline;
	if(tagline === null)
		tagline = "";
	$('.js-tagline').text(tagline);
	$('.js-description').empty();
	if(response.description.length > 0){
		var paragraph = "";
		response.description.forEach(function(p){
			paragraph += `<p>`;
			paragraph += p;
			paragraph += `</p>`
		})

		$('.js-description').append(paragraph);
	}
	$('.js-images').empty();
	if(response.images.length > 0){
		console.log("here");
		var imageGallery = `<div class="gallery">
    <div class="img-wrap main-img js-main-img">
    <img class = "selected-img" src="${response.images[0].url}" />
    </div>
    <ul> <span >`
    	response.images.forEach(function(image, index){
    		imageGallery += `
			 <a href><img class = "small-image js-image" data-url = "${image.url}"
			src = "${image.url}" /></a>`
       

    	});
      imageGallery +=  `</span></ul></div>`;
      $('.js-images').append(imageGallery);

	}
	$('.js-modal').modal("show");
	
}


$(document).on("turbolinks:load", function(){
	$(".js-show-movie").on("click", function (event){
		event.preventDefault();
		var $button = $(event.currentTarget);
		var movieId= $button.data("movie-uri");

		var movie = new CombatAcesApp.Movie(movieId);
		movie.render();
	});
	$('.js-images').on("click", ".js-image", function(event){
		event.preventDefault();
		var button =  event.currentTarget;
		var url = $(button).data("url");
		var newImage = ` <img class = "selected-img" src="${url}" />`;
		$('.js-main-img').empty();
		$('.js-main-img').append(newImage);
	})


});