package com.greenart.bctour.Controller;

import java.io.File;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
@Controller
public class UploadController {

	
	// UploadController- �Խ��ǰ� ���� �� ���� upload ����Ʈ���� ����� �����ϴ��� Ȯ�� 
	@GetMapping("/upload2")
	public String uploadAjax() {
		return "file";
	} 
	
	@ResponseBody
	@PostMapping("/upload2")
							  // ���������� �����ϴ� ���� ��ü
	public void uploadAjaxPost( MultipartFile[] uploadFile, Integer bno, HttpServletRequest request) {

		System.out.println("ajax post update!");
        // ����Ǵ� ��� ( �ڽ��� ���� ��ġ�� �°� ������ ��)
//		String uploadFolder2 = "C:\\Users\\green\\git\\BCtour\\ch1\\src\\main\\webapp\\resources\\img";
		String uploadFolder = request.getSession().getServletContext().getRealPath("/")+"\\resources\\img";

		for (MultipartFile multipartFile : uploadFile) { // �������� ������ ��� ���� for�� �̿�

			System.out.println("------------------------");
			System.out.println("Upload file name : " + multipartFile.getOriginalFilename()); // ���� �̸�
			System.out.println("Upload file size : " + multipartFile.getSize()); // ���� ũ��

			String uploadFileName = multipartFile.getOriginalFilename(); 
			System.out.println("uplodaFileName : "+uploadFileName);
			uploadFileName = uploadFileName.substring(uploadFileName.lastIndexOf("\\") + 1); // ��ΰ� �ִٸ� ���� �̸��� ������ �� �ֵ���
			System.out.println("last file name : " + uploadFileName);
			File saveFile = new File(uploadFolder, uploadFileName); //uploadFolder ��ġ�� uploadFileName���� ����

			try {
				multipartFile.transferTo(saveFile); // ���������� �����ϴ� ���� ��ü�� �ڹ� ���� ��ü�� ��ȯ

			} catch (Exception e) {
				e.getMessage();
			}
		}
		
	} // uploadAjaxPost END
	
	@ResponseBody
	@PostMapping("/delete2")
							  // ���������� �����ϴ� ���� ��ü
	public void deleteAjaxPost( MultipartFile[] deleteFile, Integer bno, HttpServletRequest request) {

		System.out.println("ajax post update!");

//		String uploadFolder2 = "C:\\Users\\green\\git\\BCtour\\ch1\\src\\main\\webapp\\resources\\img";
		String uploadFolder = request.getSession().getServletContext().getRealPath("/")+"\\resources\\img";

		for (MultipartFile multipartFile : deleteFile) { // �������� ������ ��� ���� for�� �̿�

			System.out.println("------------------------");
			System.out.println("Upload file name : " + multipartFile.getOriginalFilename()); // ���� �̸�
			System.out.println("Upload file size : " + multipartFile.getSize()); // ���� ũ��

			String deleteFileName = multipartFile.getOriginalFilename(); 
			System.out.println("uplodaFileName : "+deleteFile);
			deleteFileName = deleteFileName.substring(deleteFileName.lastIndexOf("\\") + 1); // ��ΰ� �ִٸ� ���� �̸��� ������ �� �ֵ���
			System.out.println("last file name : " + deleteFileName);
			File delFile = new File(uploadFolder, deleteFileName); //uploadFolder ��ġ�� uploadFileName���� ����

			try {	
				if(delFile.exists()) { // ������ �����ϸ�
					delFile.delete(); // ���� ����	
				}

			} catch (Exception e) {
				e.getMessage();
			}
			
		}
		
	} // uploadAjaxPost END
}