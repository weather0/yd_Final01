package com.kcy.chat.model;

import java.util.UUID;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
public class ChatRoom {

    private String roomId;
    private String roomName;
    private String profId;
    


    public static ChatRoom create(String name , String profId) {
        ChatRoom room = new ChatRoom();
        room.roomId = name;
        room.roomName = name;
        room.profId = profId;
        return room;
    }
}