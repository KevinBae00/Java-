package model1;

import lombok.Getter;
import lombok.Setter;

import java.sql.Date;

@Getter
@Setter
public class BoardDTO {
    private String num;
    private String title;
    private String content;
    private String id;
    private Date postdate;
    private String visitcount;
    private String name;
}
