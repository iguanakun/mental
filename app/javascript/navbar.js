function navbar (){
  const pullDownButton = document.getElementById("navbar-items")
  const pullDownParents = document.getElementById("navbar-pulldown");
  
  pullDownButton.addEventListener('mouseover', function(){
    pullDownButton.setAttribute("style", "background-color:#96dc78;")
  })

  pullDownButton.addEventListener('mouseout', function(){
    pullDownButton.removeAttribute("style")
  })

  pullDownButton.addEventListener('click', function(e) {
    // プルダウメニューの表示と非表示の設定
    if (pullDownParents.style.display == 'block') {
        pullDownParents.style.display = 'none';
    } else {
        pullDownParents.style.display = 'block';
    }
    
    // クリックがプルダウンボタン内で伝播しないようにする
    e.stopPropagation();
  });

  // ドキュメント全体にクリックイベントハンドラを追加
  document.addEventListener('click', function() {
      // プルダウンメニューを非表示にする
      pullDownParents.style.display = 'none';
  });

  // プルダウンメニュー内のクリックがドキュメント全体に伝播しないようにする
  pullDownParents.addEventListener('click', function(e) {
      e.stopPropagation();
  });

};
 
window.addEventListener('turbo:load', navbar);