package com.eee.mari.product;

import java.io.File;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/product/*") //공통 url mapping
public class ProductController {
	
	@Inject
	ProductService Service;
	
	@RequestMapping("list") //세부 url
	public ModelAndView list(ModelAndView mav) {
		mav.setViewName("product/product"); //이동할 페이지 이름
		mav.addObject("list",Service.listProduct()); //데이터저장
		return mav; //페이지 이동
	}
	
	@RequestMapping("/detail/{product_id}")
	public ModelAndView detail(
			@PathVariable("product_id") int product_id,
			ModelAndView mav) {
		mav.setViewName("product/product_detail");
		mav.addObject("dto", Service.detailProduct(product_id));
		return mav;
	}		
	
	@RequestMapping("write.do")
	public String write() {
		return "product/product_write";
	}
	
	@RequestMapping("insert.do")
	public String insert(ProductDTO dto) {
		String filename="-";
		if(!dto.getFile1().isEmpty()) { //첨부파일이 존재하면
			filename=dto.getFile1().getOriginalFilename();
			String path="D:\\spring\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\Mari\\resources\\images\\";
					try {
						new File(path).mkdir();
						dto.getFile1().transferTo(new File(path+filename));
					}catch (Exception e ) {
						e.printStackTrace();
					}
		}
		dto.setPicture_url(filename);
		Service.insertProduct(dto);
		return "redirect:/product/list.do";
	}
	
	//상품정보 편집 페이지로 이동
	@RequestMapping("edit/{product_id}")
	public ModelAndView edit(
			@PathVariable("product_id") int product_id,
			ModelAndView mav) {
		mav.setViewName("product/product_edit"); //이동 페이지
		mav.addObject("dto",Service.detailProduct(product_id));
		return mav; // 페이지 이동
	}	
	
	@RequestMapping("update.do")
	public String update(ProductDTO dto) {
		String filename="-";
		
		if(!dto.getFile1().isEmpty()) {//첨부파일이 존재하면
			 filename=dto.getFile1().getOriginalFilename();
			 String path=
"D:\\spring\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\Mari\\resources\\images\\";
			 try {
				 new File(path).mkdir();
				 dto.getFile1().transferTo(new File(path+filename)); //카피하는 명령어
			 } catch (Exception e) {
				 e.printStackTrace();
			 }
			dto.setPicture_url(filename);
		}else {
			ProductDTO dto2=
					Service.detailProduct(dto.getProduct_id());
			dto.setPicture_url(dto2.getPicture_url());
		}
		
		Service.updateProduct(dto);
		return "redirect:/product/list";
	}
	
	@RequestMapping("delete.do")
	public String delete(@RequestParam int product_id) {
		//첨부파일 이름
		String filename=Service.fileInfo(product_id);
		if(filename != null && !filename.equals("-")) {
			String path=
"D:\\spring\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\Mari\\resources\\images\\";
			File f=new File(path+filename);
			if(f.exists()) { //파일이 존재하면
				f.delete(); //파일 삭제
			}
		}
		Service.deleteProduct(product_id); //레코드 삭제 
		return "redirect:/product/list.do";
	}
}
