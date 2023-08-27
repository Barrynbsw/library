import VueRouter from "vue-router";
import Vue from 'vue'
import About from '../components/element/AboutView';
import Home from'../components/element/HomeView';
import User from "@/components/element/User/UserView";
import AddUser from "@/components/element/User/AddUser";
import EditUser from "@/components/element/User/EditUser";
import Admin from "@/components/element/Admin/AdminView";
import AddAdmin from "@/components/element/Admin/AddAdmin";
import EditAdmin from "@/components/element/Admin/EditAdmin";
import Login from "@/components/element/Login/Login";
import ElementView from "@/components/element/ElementView";
import Cookies from "js-cookie";
Vue.use(VueRouter)

    const routes = [
        {
            path:'/login',
            component:Login
        },
        {
            path:'/forget',
            name:'Forget',
            component:()=> import("@/components/element/Login/Forget")
        },
        {
            path:'/register',
            name:'Register',
            component:()=> import("@/components/element/Login/Register")
        },
        {
            path:'/',
            component:ElementView,
            redirect:'/home',
            children:[
                {
                    path:'about',
                    component:About
                },
                {
                    path:'home',
                    component:Home
                },
                {
                    path:'user',
                    component:User
                },
                {
                    path:'adduser',
                    component:AddUser
                },
                {
                    path:'edituser',
                    component:EditUser
                },
                {
                    path:'admin',
                    component:Admin
                },
                {
                    path:'addadmin',
                    component:AddAdmin
                },
                {
                    path:'editadmin',
                    component:EditAdmin
                },

            ]
        },
    ]
const router = new VueRouter({
    mode: 'history',
    base: process.env.BASE_URL,
    routes
})
router.beforeEach((to, from, next) => {
    if (to.path === '/login') return next()
    const admin=Cookies.get('admin')
    if (!admin) {

        return next("/login")
        }
      next()
})

export default router