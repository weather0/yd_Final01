package com.kcy.chat.controller;

import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.web.bind.annotation.RestController;

import com.kcy.chat.model.ChatMessage;
import com.kcy.chat.pubsub.RedisPublisher;
import com.kcy.chat.service.ChatRoomRepository;

import lombok.RequiredArgsConstructor;

@RestController
@RequiredArgsConstructor
public class MessageController {

	private final RedisPublisher redisPublisher;
    private final ChatRoomRepository chatRoomRepository;
    /**
     * websocket "/pub/chat/message"로 들어오는 메시징을 처리한다.
     */
    @MessageMapping("/chat/message")
    public void message(ChatMessage message) {
        if (ChatMessage.MessageType.ENTER.equals(message.getType())) {
            chatRoomRepository.enterChatRoom(message.getRoomId());
            message.setMessage(message.getSender() + "님이 입장하셨습니다.");
        }
        // Websocket에 발행된 메시지를 redis로 발행한다(publish)
        redisPublisher.publish(chatRoomRepository.getTopic(message.getRoomId()), message);
    }
}