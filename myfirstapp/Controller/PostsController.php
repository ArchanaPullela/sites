<?php
	class PostsController extends AppController
	{
		public $components = array('Session');

		public function index()
		{
			if(AuthComponent::user('role')==1)
			{
				$this->redirect(array('Controller' => 'topics','action' => 'index'));
			}
			$data = $this->Post->find('all');
			$this->set('posts',$data);


		}

			public function add($id)
			{
				if($this->request->is('post'))
				{
					$this->Post->create();

					$this->request->data['Post']['topic_id'] = $id;
					$this->request->data['Post']['user_id'] = AuthComponent::user('id');

					if($this->Post->save($this->request->data))
					{
						$this->Session->setFlash('The Post Has Been Created');
						$this->redirect('/topics/view/'.$id);
					}
				}

				//$this->set('topics', $this->Post->Topic->find('list'));
				$this->set('topics',$this->Post->Topic->find('list'));

			}
				public function view($id)
				{
					$data = $this ->Post->findById($id);
					$this->set('post',$data);
				}

	}
?>