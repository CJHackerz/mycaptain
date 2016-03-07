$(function(){
  $("#logos").slidesjs({
    width: 1036,
    height: 200,
  	pagination: false,
  	generatePagination: false,
  	navigation: false,
    play: {
      active: false,
        // [boolean] Generate the play and stop buttons.
        // You cannot use your own buttons. Sorry.
      effect: "fade",
        // [string] Can be either "slide" or "fade".
      interval: 1900,
        // [number] Time spent on each slide in milliseconds.
      auto: true,
        // [boolean] Start playing the slideshow on load.
      swap: false,
        // [boolean] show/hide stop and play buttons
      pauseOnHover: false,
        // [boolean] pause a playing slideshow on hover
      restartDelay: 2500
        // [number] restart delay on inactive slideshow
    },

    effect :{
    	fade: {
    		crossfade: true
    	}
    }
  });
});
