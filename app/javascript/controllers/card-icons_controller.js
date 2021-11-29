import { Controller } from "@hotwired/stimulus";

const base_url = "www.chefme.xyz"

export default class extends Controller {
  // static values = { options: Object }

  bookmark(e) {
    e.preventDefault();
    e.stopImmediatePropagation();
    if (e.target.dataset.saved==='0') {
      fetch(`recipes/${e.target.dataset.recipe}/saved_recipes`, {
        headers: {
          'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content')
        },
        method: 'POST'
      })
        .then(r=>r.json())
        .then(data => e.target.dataset.saved=data.id);
      e.target.classList.remove('far')
      e.target.classList.add('fas')
    } else {
      fetch(`saved_recipes/${e.target.dataset.saved}`, {
        headers: {
          'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content')
        },
        method: 'DELETE'
      });
      e.target.dataset.saved = '0'
      e.target.classList.remove('fas')
      e.target.classList.add('far')
    }
  }
}
