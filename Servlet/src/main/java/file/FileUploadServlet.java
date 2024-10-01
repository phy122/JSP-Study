package file;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.UUID;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/upload")
@MultipartConfig // 파일 업로드를 처리하기 위한 어노테이션 설정
public class FileUploadServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public FileUploadServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.getWriter().append("Served at: ").append(request.getContextPath());
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 응답 인코딩 설정
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");

        // 서버 내의 실제 경로 가져오기
        String applicationPath = request.getServletContext().getRealPath("");
        System.out.println("applicationPath : " + applicationPath);

        // 파일을 업로드할 경로 설정
        String uploadPath = "C:\\fileupload"; // 절대 경로 사용 시
        // String uploadPath = applicationPath + "uploads"; // 상대 경로를 사용할 경우

        // 업로드 폴더가 없으면 폴더 생성
        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) {
            uploadDir.mkdirs(); // 상위 디렉토리까지 모두 생성
        }

        // 제목 가져오기
        response.setCharacterEncoding("UTF-8");
        String title = request.getParameter("title");
        System.out.println("title : " + title);

        // 클라이언트에서 전송된 파일 가져오기
        Part filePart = request.getPart("file");
        String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();

        // 고유한 파일 이름 생성 (UUID 사용)
        String filePath = uploadPath + File.separator + UUID.randomUUID() + "__" + fileName;

        // 파일 저장
        try (InputStream is = filePart.getInputStream()) {
            Files.copy(is, Paths.get(filePath), StandardCopyOption.REPLACE_EXISTING); // 덮어쓰기 옵션 추가
            System.out.println("파일이 성공적으로 업로드되었습니다.");
        } catch (IOException e) {
            System.out.println("파일 복사 중 에러 발생");
            e.printStackTrace();
        }

        // 응답 작성
        try (PrintWriter writer = response.getWriter()) {
            writer.println("제목: " + title + "<br>"); // 제목 출력
            writer.println("파일 업로드 성공<br>");
            writer.println("파일 경로: " + filePath);
        }
    }
}
