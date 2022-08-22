<!-- <template>
  <div id="app">
    <img src="./assets/logo.png">
    <b-button variant="primary">Button</b-button>
    <router-view/>
  </div>
</template>

<script>
export default {
  name: 'App'
}
</script> -->

<template>
  <div id="app" class="main-content position-relative max-height-vh-100 h-100 border-radius-lg ">
    <Header />
    <div>
    <SideBar />
    <router-view/>
    </div>
    <Footer />
  </div>
</template>

<script>
  import Header from '@/components/Header.vue';
  import Footer from '@/components/Footer.vue';
  import Sidebar from '@/components/Sidebar.vue';
export default {
    components: {
    Header,
    Footer,
    Sidebar
}
}
</script>

<style>
  @import "../src/assets/css/material-dashboard.css";
  @import "../src/assets/css/material-dashboard.min.css";
  @import "../src/assets/css/nucleo-icons.css";
  @import "../src/assets/css/nucleo-svg.css";

</style>

