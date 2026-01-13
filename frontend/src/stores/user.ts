import {defineStore} from 'pinia';
import { ref, type Ref } from "vue";
import { User as UserType } from '../models/user';
import UserServices from '../Services/UserServices';

export const UserStore = defineStore('user', () => {

  const user: Ref<UserType | null> = ref(null);
  const isLogin: Ref<boolean> = ref(false);

  async function initUser(){
    const res = await UserServices.TestLogin()
    if(res.loggedIn){
      user.value = new UserType(res.user.mail, res.user.username, res.user.description, res.user.nbMusicListen)
      isLogin.value = true
    } else {
      user.value = null
      isLogin.value = false
    }
  }

  function reset() {
    user.value = null;
    isLogin.value = false;
  }

  return {
    user,
    isLogin,
    initUser,
    reset
  };

  
})