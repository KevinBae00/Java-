package com.algoda;

import com.algoda.Word.model.Wordadao;
import com.algoda.Word.model.Worddto;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

@WebServlet("exam.do")
public class Examcontroller extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public Examcontroller() {
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int level = Integer.parseInt(req.getParameter("level"));
        int day = Integer.parseInt(req.getParameter("day"));
        int randomnumber[] = new int[10];
        Random random = new Random();
        List<Worddto> worddtoList = new ArrayList<Worddto>();
        Worddto worddto = new Worddto();

        worddto.setDay(day);
        if (level == 1) {
            Wordadao wordadao = new Wordadao();

            List<Worddto> wordAList = wordadao.getWordAList(worddto);
            for (int i = 0; i < 10; i++) {
                randomnumber[i] = random.nextInt(wordAList.size());
                for (int j = 0; j < i; j++) {
                    if (randomnumber[i] == randomnumber[j]) i--;
                }
            }
            for (int i = 0; i < 10; i++) {
                worddtoList.add(wordAList.get(randomnumber[i]));
            }
        }

        req.setAttribute("examLists", worddtoList);
        req.getRequestDispatcher("/algoda/exam.jsp").forward(req, resp);
    }
}
