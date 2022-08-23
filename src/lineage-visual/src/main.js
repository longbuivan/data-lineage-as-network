import Vue from 'vue'
import App from './App.vue'
import router from './router'
import axios from "axios";


Vue.config.productionTip = false
axios.defaults.baseURL = "https://o1mck4m941.execute-api.eu-west-2.amazonaws.com/dev";

new Vue({
  router,
  render: h => h(App)
}).$mount('#app')
