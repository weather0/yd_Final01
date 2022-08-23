import Hello from '@/components/HelloWorld.vue'
import Test from '@/views/Test.vue'
import Login from '@/views/Login.vue'


Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/hello',
      name: 'Hello',
      component: Hello
    },
    {
      path: '/test',
      name:'Test',
      component: Test
    },
    {
      path: '/',
      name:'Login',
      component: Login
    }
  ]
})
