/**
 * Created by chcha on 15/05/2017.
 */
var authwininterval = 0;

function openAuthWin(targetLocation) {
  if( !!!targetLocation ) {
    targetLocation = "/";
  }

  var title = "본인인증";
  var authurl = "//apps.greencar.co.kr/KCP_AUTH/sms_auth2.html?web=Y";
  var encodedAuthUrl = encodeURIComponent(authurl);
  var url = "/member/authProxy.jsp?aurl=" + encodedAuthUrl;

  var w = 600;
  var h = 850;
  var left = (screen.width/2)-(w/2);
  var top = (screen.height/2)-(h/2);

  var authwin = window.open(url, title, 'toolbar=no, menubar=no, scrollbars=yes, resizable=no, width='+w+', height='+h+', top='+top+', left='+left);

  window.addEventListener("message", function(event) {
    if (event.data.message === "deliverResult") {
//      console.log(event.data); // {user: 'data'}
      var result = event.data.result;
      authwin.postMessage({ message: "finish" }, "*");

      var array = result.split("||");

      var data = {
        certno: array[0],
        ci: array[1],
        di: array[2],
        custNm: array[3],
        sex: array[4],
        birth: array[5],
        nationalInfo: array[6],
        hp: array[7]
      };

      $.ajax({
        type: "POST",
        url: __globalContextPath + "/member/certSave.do",
        data: data,
        async: false,
        dataType: "json",
        success: function (data) {
          debugConsole(data.result);
          if( data.result !== "" ) {
            alert(data.result);
          } else {
            alert("본인인증이 완료되었습니다.");
          }
        },

        failure: function (data) {
          alert('Fail');
        }
      });
      location.reload();
    }
  }, false);

  var leftDomain = false;
  if( authwininterval > 0 ) {
    clearInterval(authwininterval);
  }
  authwininterval = setInterval(function() {
    try {
      if (authwin.document.domain === document.domain)
      {
//        console.log("url=" + authwin.document.URL);
        if (leftDomain && authwin.document.URL.indexOf("result") >=0 && authwin.document.readyState === "complete")
        {
          // we're here when the child window returned to our domain
          clearInterval(authwininterval);
          authwin.postMessage({ message: "requestResult" }, "*");
        }
      } else {
        // this code should never be reached,
        // as the x-site security check throws
        // but just in case
        leftDomain = true;
      }
    }
    catch(e) {
      // we're here when the child window has been navigated away or closed
      if (authwin.closed) {
        clearInterval(authwininterval);
        alert("본인인증이 완료되지 않았습니다.");
        return;
      }
//      console.log("exception leftDomain")
      // navigated to another domain
      leftDomain = true;
    }
  }, 500);
}

