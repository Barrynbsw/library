import VueRouter from "vue-router";
import About from '../components/element/AboutView';
import Home from'../components/element/HomeView';
import User from "@/components/element/User/UserView";
import AddUser from "@/components/element/User/AddUser";
import EditUser from "@/components/element/User/EditUser";
import Admin from "@/components/element/Admin/AdminView"
import AddAdmin from "@/components/element/Admin/AddAdmin";
import EditAdmin from "@/components/element/Admin/EditAdmin";
export default new VueRouter({
    routes:[
        {
            path:'/about',
            component:About
        },
        {
            path:'/',
            component:Home
        },
        {
            path:'/user',
            component:User
        },
        {
            path:'/adduser',
            component:AddUser
        },
        {
            path:'/edituser',
            component:EditUser
        },
        {
            path:'/admin',
            component:Admin
        },
        {
            path:'/addadmin',
            component:AddAdmin
        },
        {
            path:'/editadmin',
            component:EditAdmin
        },
    ]

})