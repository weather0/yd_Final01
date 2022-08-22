<template>
  <div class="container" id="app" v-cloak>
        <div>
            <h2>{{room.name}}</h2>
        </div>
        <div class="input-group">
            <div class="input-group-prepend">
                <label class="input-group-text">내용</label>
            </div>
            <input type="text" class="form-control" v-model="message" @keyup.enter="sendMessage">
            <div class="input-group-append">
                <button class="btn btn-primary" type="button" @click="sendMessage">보내기</button>
            </div>
        </div>
        <ul class="list-group">
            
        </ul>
        <div></div>
    </div>
</template>

<script>
export default {
  name: 'App'
}
</script>

<style>
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
 <script src="/webjars/vue/2.5.16/dist/vue.min.js"></script>
    <script src="/webjars/axios/0.17.1/dist/axios.min.js"></script>
    <script>
        var vm = new Vue({
            el: '#app',
            data: {
                room_name : '',
                chatrooms: [
                ]
            },
            created() {
                this.findAllRoom();
            },
            methods: {
                findAllRoom: function() {
                    axios.get('/chat/rooms').then(response => { this.chatrooms = response.data; });
                },
                createRoom: function() {
                    if("" === this.room_name) {
                        alert("방 제목을 입력해 주십시요.");
                        return;
                    } else {
                        var params = new URLSearchParams();
                        params.append("name",this.room_name);
                        axios.post('/chat/room', params)
                        .then(
                            response => {
                                alert(response.data.name+"방 개설에 성공하였습니다.")
                                this.room_name = '';
                                this.findAllRoom();
                            }
                        )
                        .catch( response => { alert("채팅방 개설에 실패하였습니다."); } );
                    }
                },
                enterRoom: function(roomId) {
                    var sender = prompt('대화명을 입력해 주세요.');
                    if(sender != "") {
                        localStorage.setItem('wschat.sender',sender);
                        localStorage.setItem('wschat.roomId',roomId);
                        location.href="/chat/room/enter/"+roomId;
                    }
                }
            }
        });
    </script>
