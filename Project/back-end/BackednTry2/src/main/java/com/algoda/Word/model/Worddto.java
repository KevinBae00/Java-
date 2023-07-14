package com.algoda.Word.model;

import lombok.Data;

@Data
public class Worddto {
    String word;
    String meaninga;
    String meaningb;
    String meaningc;
    String similar_worda;
    String similar_wordb;
    String similar_wordc;
    int day;
}