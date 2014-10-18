$ ->
  $('.swiper-container.hone-swiper').each ()->
    new Swiper(this,
      pagination: '.pagination'
      paginationClickable: true
      resizeReInit: true
    )
