window.onload = function() {
  var add = document.getElementById('add');
  add.addEventListener('click', function() {
    var forms = document.querySelector('.forms');
    var clone = forms.cloneNode(true);
    clone.querySelector('#food-name').id = 'food-name' + new Date().getTime();
    clone.querySelector('#food-amount').id = 'food-amount' + new Date().getTime();
    forms.parentNode.appendChild(clone);
  });

  document.addEventListener('click', function(e) {
    if (e.target && e.target.id && e.target.id.includes('food-amount')) {
      add.click();
    }
  });

  pullDown();
}