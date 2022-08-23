import Hello from '@/components/HelloWorld.vue'
import Test from '@/views/Test.vue'
import Vue from 'vue'
import Router from 'vue-router'
import Room from '@/views/Room.vue'


Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'Hello',
      component: Hello
    },
    {
      path: '/test',
      name:'Test',
      component: Test
    },
    {
      path: '/room',
      name:'Room',
      component: Room
    }
  ]
})
