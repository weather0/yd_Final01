
<template>
  <div id="app">
    <Sidebar />
      <main class="main-content position-relative max-height-vh-100 h-100 border-radius-lg ">
    <Header />
    <router-view/>
    <Footer />
      </main>
  </div>
</template>

<script>
  import Header from '@/components/Header.vue';
  import Footer from '@/components/Footer.vue';
  import Sidebar from '@/components/SideBar.vue';
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

