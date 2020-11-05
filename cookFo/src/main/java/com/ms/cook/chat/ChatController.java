package com.ms.cook.chat;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/chat/**")
public class ChatController {
	@RequestMapping(value = "chatRoom", method=RequestMethod.GET)
	public String chatRoom() {
		return "chat/room";
	}
}
