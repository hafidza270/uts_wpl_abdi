<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Students extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model("student_model");
        $this->load->library('form_validation');
    }

    public function index()
    {
        $data["students"] = $this->student_model->getAll();
        $this->load->view("admin/student/list.php", $data);
    }

    public function add()
    {
        // $student = $this->student_model;
        // $validation = $this->form_validation;
        // $validation->set_rules($student->rules());

        // if ($validation->run()) {
        //     $student->save();
        //     $this->session->set_flashdata('success', 'Berhasil disimpan');
        // }

        $this->load->view("admin/student/new_form");
    }

    public function edit($id = null)
    {
        // if (!isset($id))
        //     redirect('admin/students');

        // $student = $this->student_model;
        // $validation = $this->form_validation;
        // $validation->set_rules($student->rules());

        // if ($validation->run()) {
        //     $student->update();
        //     $this->session->set_flashdata('success', 'Berhasil disimpan');
        // }

        // $data["student"] = $student->getById($id);
        // if (!$data["student"])
        //     show_404();

        $this->load->view("admin/student/edit_form");
    }

    public function delete($id = null)
    {
        if (!isset($id))
            show_404();

        if ($this->student_model->delete($id)) {
            redirect(site_url('admin/students'));
        }
    }
}

/* End of file  Students.php */