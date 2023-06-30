package websocket;

//@ServerEndpoint() : 웹소켓 서버의 요청명 설정
//@OnOpen : 클라이언트 접속했을 때 요청되는 메소드
//@OnMessage : 클라이언트로부터 메세지가 전송되었을 때 실행되는 메소드
//@OnClose : 클라이언트로 접속이 종료되면 실행되는 메소드
//@OnError : 에러 발생시 실행되는 메소드

import javax.websocket.*;
import javax.websocket.server.ServerEndpoint;
import java.io.IOException;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

@ServerEndpoint("/ChatingServer")
public class ChatServer {
    private static Set<Session> clients = Collections.synchronizedSet(new HashSet<Session>());

    @OnOpen
    public void onOpen(Session session) {
        clients.add(session);
        System.out.println("웹소켓 연결:" + session.getId());
    }

    @OnMessage
    public void onMessage(String message, Session session) throws IOException {
        System.out.println("메세지 전송: " + session.getId());

        synchronized (clients) {
            for (Session client : clients) {
                if (!clients.equals(session)) {
                    client.getBasicRemote().sendText(message);
                }
            }
        }
    }

    @OnClose
    public void onClose(Session session) {
        clients.remove(session);
        System.out.println("웹소켓 종료: " + session.getId());
    }

    @OnError
    public void onError(Throwable e) {
        System.out.println("에러 발생");
        e.printStackTrace();
    }

}
