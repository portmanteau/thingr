class PageController
  constructor: () ->
    @_setUpLinks()
    @_setUpPopState()

  setView: (url, isXHR)->
    console.log arguments
    @_setContent(url, isXHR)
    @_setNav(url, isXHR)


  _setContent: (url, isXHR) ->
    $.ajax(url,
      success: (data)->
        $('#content').html(data)
      error: (data)->
        $("
        console.log(data)
    )

  _setNav: (url, isXHR) ->

  _setUpLinks: ()->
    $('a').on('click', (event) =>
      window.history.pushState(null, null, event.target.pathname)
      @setView(event.target.pathname, true)
      return false
    )

  _setUpPopState: ()->
    $(window).on('popstate', ()=>
      console.log arguments
      @setView(window.location.pathname, true)
    )

$ ->
  navSwiper = new Swiper '.swiper-container.navbar',
    centeredSlides: true
    slidesPerView: 3
    onSlideChangeStart: (swiper) ->
      $(window).trigger('navSwiper:navChange',
        activeSlide: swiper.activeSlide
      )

  $('.nav-item').on('click', (event) ->
    navSwiper.swipeTo(event.target.data('index'))
  )

  $(window).on('navSwiper:navChange', () ->
    data = arguments[1]
  )

  pageController = new PageController()

  pageController.setView(window.location.pathname, false)
