<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Student_model extends CI_Model
{

    private $_table = "data_mahasiswa";

    public $id;
    public $nim;
    public $nama;
    public $alamat;
    public $email;
    public $tempat_lahir;
    public $tgl_lahir;
    public $agama;
    public $status;
    public $foto = 'default.jpg';

    public function rules()
    {
        return [
            [
                'field' => 'nim',
                'label' => 'NIM',
                'rules' => 'required|min_length[12]'
            ],

            [
                'field' => 'nama',
                'label' => 'Nama',
                'rules' => 'required|max_length[100]'
            ],

            [
                'field' => 'alamat',
                'label' => 'Alamat',
                'rules' => 'max_length[255]'
            ],

            [
                'field' => 'email',
                'label' => 'Email',
                'rules' => 'valid_email|max_length[100]'
            ],

            [
                'field' => 'tempat_lahir',
                'label' => 'Tempat Lahir',
                'rules' => 'max_length[100]'
            ],

            [
                'field' => 'tgl_lahir',
                'label' => 'Tanggal Lahir',
                'rules' => 'valid_date'
            ],

            [
                'field' => 'agama',
                'label' => 'Agama',
                'rules' => 'max_length[50]'
            ],

            [
                'field' => 'status',
                'label' => 'Status',
                'rules' => 'max_length[50]'
            ],


        ];
    }


    public function getAll()
    {
        return $this->db->get($this->_table)->result();
    }

    public function getById($id)
    {
        return $this->db->get_where($this->_table, ["id" => $id])->row();
    }

    public function save()
    {
        $post = $this->input->post();
        $this->id = uniqid();
        $this->nim = $post["nim"];
        $this->nama = $post["nama"];
        $this->alamat = $post["alamat"];
        $this->email = $post["email"];
        $this->tempat_lahir = $post["tempat_lahir"];
        $this->tgl_lahir = $post["tgl_lahir"];
        $this->agama = $post["agama"];
        $this->status = $post["status"];
        // $this->foto = $post["foto"];
        return $this->db->insert($this->_table, $this);
    }

    public function update()
    {
        $post = $this->input->post();
        $this->id = $post["id"];
        $this->nim = $post["nim"];
        $this->nama = $post["nama"];
        $this->alamat = $post["alamat"];
        $this->email = $post["email"];
        $this->tempat_lahir = $post["tempat_lahir"];
        $this->tgl_lahir = $post["tgl_lahir"];
        // $this->agama = $post["agama"];
        $this->status = $post["status"];

        $this->foto = $post["foto"];
        return $this->db->update($this->_table, $this, array('id' => $post['id']));
    }

    public function delete($id)
    {
        return $this->db->delete($this->_table, array("id" => $id));
    }

}