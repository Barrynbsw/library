import VueRouter from "vue-router";
import About from '../components/element/AboutView';
import Home from'../components/element/HomeView';
import User from "@/components/element/User/UserView";
export default new VueRouter({
    routes:[
        {
            path:'/about',
            component:About
        },
        {
            path:'/home',
            component:Home
        },
        {
            path:'/user',
            component:User
        }

    ]

})