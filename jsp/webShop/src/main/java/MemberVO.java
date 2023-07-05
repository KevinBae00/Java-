import lombok.Getter;
import lombok.Setter;

import java.sql.Date;

//lombok적용하기
@Getter
@Setter

public class MemberVO {
    private String id;
    private String pwd;
    private String name;
    private String email;
    private Date joinDate;


}
