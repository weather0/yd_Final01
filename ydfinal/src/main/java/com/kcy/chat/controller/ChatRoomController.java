package com.kcy.chat.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kcy.chat.model.ChatRoom;
import com.kcy.chat.service.ChatRoomRepository;

import lombok.RequiredArgsConstructor;
/*작성자 : 정철우*/
@Controller
@RequiredArgsConstructor
@RequestMapping("/chat")
public class ChatRoomController {
	private final ChatRoomRepository chatService;

	// 채팅 리스트 화면

	@GetMapping("/room")
	public String rooms(Model model) {
		return "pages/mentorMgr/chat/room";
	}

	// 채팅 리스트 화면 test
	@GetMapping("/room2")
	public String rooms2(Model model) {
		return "pages/mentorMgr/schedule/schedule";
	}

	// 모든 채팅방 목록 반환
	@GetMapping("/rooms")
	@ResponseBody
	public List<ChatRoom> room() {
		return chatService.findAllRoom();
	}

	// 채팅방 생성
	@PostMapping("/room")
	@ResponseBody
	public ChatRoom createRoom(@RequestParam String name, @RequestParam String profId) {
		return chatService.createRoom(name,profId);
	}
	// 채팅방 입장 화면

	@GetMapping("/room/enter/{roomId}")
	public String roomDetail(Model model, @PathVariable String roomId) {
		model.addAttribute("roomId", roomId);
		return "pages/mentorMgr/chat/roomdetail";
	}

	// 특정 채팅방 조회
	@GetMapping("/room/{roomId}")
	@ResponseBody
	public ChatRoom roomInfo(@PathVariable String roomId) {
		return chatService.findById(roomId);
	}
}