{"filter":false,"title":"courses.coffee","tooltip":"/app/assets/javascripts/courses.coffee","undoManager":{"mark":0,"position":-1,"stack":[[{"start":{"row":3,"column":0},"end":{"row":13,"column":0},"action":"insert","lines":["displayFile = (object) ->","  file = object.value.split(\"\\\\\")","  filename = file[file.length-1]","  $(\"#file-name\").text(filename)","","$(\"#file-btn\").on \"click\", ->","  $(\"#file-picker\").click()","","$(\"#file-picker\").on \"change\", ->","  displayFile(this)",""],"id":2}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":3,"column":0},"end":{"row":3,"column":0},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1464179017000,"hash":"9ffca4f85555adb3633dc866217f1640e9bfc4d7"}