angular.module 'pmLucky'
.directive 'pmDropfile', ()->
  return {
    restrict: 'A'
    link: (scope, element)->
      if typeof window.FileReader is 'undefined'
        angular.element('small',this)
          .html('File API & FileReader API not supported')
          .addClass('text-danger')
        return

      angular.element element 
      .on 'dragover', (e)->
        angular.element this
        .addClass 'hover'
        return false
      .on 'dragend', (e)->
        angular.element this
        .removeClass 'hover'
        return false
      .on 'drop', (e)->
        e.preventDefault()
        angular.element this
        .removeClass 'hover'
        .html ''

        file = e.originalEvent.dataTransfer.files[0]
        reader = new FileReader()
        reader.onload = (event)=>
          angular.element this
          .append(angular.element '<img>'
            .attr 'src', event.target.result
            .css 
              'max-width': '100%'
              'max-height': '100%'
          )
        reader.readAsDataURL file
        return false
  }