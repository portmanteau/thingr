class PageController
  constructor: () ->
    @_setUpLinks()
    @_setUpPopState()
    @_bindEventListeners()

  setView: (uri)->
    index = @_indexForUri(uri)
    @_setNav(index)
    @_setContent(uri, index)

  _bindEventListeners: ()->
    $(window).on('navchange', (event, data)=>
      slide = $('.nav-item[data-index=' + data.index + ']')[0]
      uri = slide.pathname
      window.history.pushState(null, null, uri)
      @setView uri
    )
    $(window).on('resize', ()=>
      @_contentSwiper.reInit(true) #hack
    )

  _setContent: (uri, index) ->
    pane = $('.pane[data-index=' + index + ']')

    $.ajax(uri,
      success: (data)=>
        $(pane).html(data)
        @_swipeContent(index)
      error: (data)=>
        $(pane).html(data.responseText)
        @_swipeContent(index)
        console.log(data)
    )

  _swipeContent: (index)->
    if (@_contentSwiper)
      @_contentSwiper.swipeTo index, 1000, false
    else if $('.swiper-container.content').length
      @_contentSwiper = new Swiper '.swiper-container.content',
        initialSlide: index
        calculateHeight: true
        onSlideChangeStart: (swiper)=>
          console.log(arguments)
          $(window).trigger('navchange',
            index: swiper.activeIndex
          )

    @_contentSwiper.reInit(true)


  _setNav: (paneIndex) ->
    if (@_navSwiper)
      @_navSwiper.swipeTo paneIndex, 1000, false
    else if $('.swiper-container.navbar').length
      @_navSwiper = new Swiper '.swiper-container.navbar',
        initialSlide: paneIndex
        centeredSlides: true
        slidesPerView: 3
        onSlideChangeStart: (swiper)=>
          console.log(arguments)
          $(window).trigger('navchange',
            index: swiper.activeIndex
          )
        onSlideReset: (swiper)=>
          console.log(arguments)
          $(window).trigger('navchange',
            index: swiper.activeIndex
          )

  _indexForUri: (uri)->
    index = 0
    $('.nav-item').each (i, element)->
      if (element.pathname == uri)
        index = i
    index

  _setUpLinks: ()->
    $("a[data~='quicklink'").on('click', (event) =>
      window.history.pushState(null, null, event.target.pathname)
      @setView(event.target.pathname)
      return false
    )

  _setUpPopState: ()->
    $(window).on('popstate', ()=>
      console.log arguments
      @setView(window.location.pathname)
    )

$ ->
  pageController = new PageController()
  pageController.setView(window.location.pathname)
  FastClick.attach(document.body)
