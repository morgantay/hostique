// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import "bootstrap"

import { initSelect2 } from './controllers/init_select2';

document.addEventListener("turbolinks:load", function() {
  initSelect2();
});

// this needs to be here for navbar dropdown to work
import { navbar } from "./controllers/my_navbar"
navbar()
