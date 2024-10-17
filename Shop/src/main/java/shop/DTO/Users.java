package shop.DTO;

import java.util.Date;


import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;


@NoArgsConstructor
@AllArgsConstructor
@Builder
@Data
public class Users {
	
	private int no;
	private String username;
	private String password;
	private String name;
	private String email;
	private Boolean enabled = true;
	private Date regDate;
	private Date updDate;
	
}
