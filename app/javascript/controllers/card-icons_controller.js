import { Controller } from "@hotwired/stimulus";

const base_url = "www.chefme.xyz"

export default class extends Controller {
  // static values = { options: Object }

  bookmark(e) {
    e.preventDefault();
    e.stopImmediatePropagation();
    if (e.target.dataset.saved==='0') {
      fetch(`/recipes/${e.target.dataset.recipe}/saved_recipes`, {
        headers: {
          'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content')
        },
        body: {
          'favourite': true
        },
        method: 'POST'
      })
        .then(r=>r.json())
        .then(data => e.target.dataset.saved=data.id);
      e.target.classList.remove('far')
      e.target.classList.add('fas')
    } else {
      fetch(`/saved_recipes/${e.target.dataset.saved}`, {
        headers: {
          'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content')
        },
        method: 'DELETE'
      });
      e.target.dataset.saved = '0'
      e.target.classList.remove('fas')
      e.target.classList.add('far')
      // let favourite = document.querySelector('.fa-heart')
      let favourite = e.currentTarget.parentElement.children[1].children[0]
      console.log(favourite)
      let complete = e.currentTarget.parentElement.children[2].children[0]
      console.log(complete)
      if (favourite.classList.contains('fas')) {
        favourite.classList.remove('fas')
        favourite.classList.add('far')
      }
      if (complete.classList.contains('fas')) {
        complete.classList.remove('fas')
        complete.classList.add('far')
      }
    }
  }

  favourite(e) {
    let bookmark = e.currentTarget.parentElement.previousElementSibling
    if (e.currentTarget.classList.contains('fas')) {
      // console.log(e.currentTarget.parentElement.previousElementSibling)
        e.currentTarget.classList.remove('fas')
        e.currentTarget.classList.add('far')
    } else {
      // console.log(e.currentTarget.parentElement.previousElementSibling)
      e.currentTarget.classList.remove('far')
      e.currentTarget.classList.add('fas')
      if (bookmark.classList.contains('far')) {
        bookmark.classList.remove('far')
        bookmark.classList.add('fas')
      }
    }
  }

  complete(e) {
    let bookmark = e.currentTarget.parentElement.parentElement.children[0]
    console.log(bookmark)
    if (e.currentTarget.classList.contains('fas')) {
      // console.log(e.currentTarget.parentElement.previousElementSibling)
      e.currentTarget.classList.remove('fas')
      e.currentTarget.classList.add('far')
    } else {
      // console.log(e.currentTarget.parentElement.previousElementSibling)
      e.currentTarget.classList.remove('far')
      e.currentTarget.classList.add('fas')
      if (bookmark.classList.contains('far')) {
        bookmark.classList.remove('far')
        bookmark.classList.add('fas')
      }
    }
  }
}
