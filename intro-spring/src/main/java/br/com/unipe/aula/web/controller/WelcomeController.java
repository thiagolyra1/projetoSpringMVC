package br.com.unipe.aula.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.unipe.aula.dao.EstudanteDAO;
import br.com.unipe.aula.model.Estudante;


@Controller
public class WelcomeController {
	
	@Autowired
	private EstudanteDAO dao;
	
	@RequestMapping(value = "/formulario", method = RequestMethod.GET)
	public ModelAndView formulario(Model model) {
		ModelAndView view = new ModelAndView("formulario");
		model.addAttribute("estudante", new Estudante());
		view.addObject("estudantes", dao.getAll());
		view.addObject("frase","Digite abaixo o nome do aluno, o curso e a taxa de matrícula:");
		return view;
	}
	
	@RequestMapping(value = "/formulario", method = RequestMethod.POST)
	public ModelAndView exibefrase(@ModelAttribute Estudante estudante) {
		ModelAndView view = new ModelAndView("formulario");
		dao.salvar(estudante);
		view.addObject("estudantes", dao.getAll());
		view.addObject("frase","Digite aqui o nome do aluno, o curso e a taxa de matrícula.");
		view.addObject("frase2", estudante.getNome() + " foi cadastrado(a) para cursar " + estudante.getCurso() + " na Universidade do SPRING MVC.");
		return view;
	}
	
	@GetMapping(value="/excluir/{id}")
	public String excluirTorcedor(@PathVariable("id") Long id, Model model) {
		dao.excluir(id);
		return "redirect:../formulario";
	}
	
	@GetMapping(value="/editar/{id}")
	public ModelAndView editarTorcedor(@PathVariable("id") Long id, Model model) {
		ModelAndView view = new ModelAndView("editar");
		model.addAttribute("estudante", dao.getId(id));
		return view;
	}
	
	@PostMapping(value="/editar/{id}")
	public String confirmaEdicaoEstudante(@PathVariable("id") int id, @ModelAttribute Estudante estudante) {
		dao.editar(estudante);
		return "redirect:../formulario";
	}

}