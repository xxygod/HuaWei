var errorInfo={};function autoHide(r){var t=r.attr("tiptimer");if(!t){t="tiptimer"+(new Date).getTime();r.attr("tiptimer",t)}if(errorInfo[t]){window.clearTimeout(errorInfo[t])}errorInfo[t]=window.setTimeout(function(){errorInfo[t]=null;r.html("")},3e3)}