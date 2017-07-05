$ ->
  do window.nestedFormLimitter = ->
    $(document).on 'nested:fieldAdded', (e) ->
      $link = $(e.currentTarget.activeElement)
      if (!$link.data('limit'))
        return
      if ($link.siblings('div.fields:visible').length >= $link.data().limit)
        $link.hide()

    $(document).on 'nested:fieldRemoved', (e) ->
      $link = $(e.target).siblings('a.add_nested_fields')
      if (!$link.data('limit'))
        return
      if ($link.siblings('div.fields:visible').length < $link.data('limit'))
        $link.show()
