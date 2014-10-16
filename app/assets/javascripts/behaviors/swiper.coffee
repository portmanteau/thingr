$ ->
  $('.swiper-container').each ()->
    new Swiper(this,
      pagination: '.pagination'
      paginationClickable: true
      resizeReInit: true
    )
