<?php
class DomDocumentParser 
{
	private $doc;
	public function __construct($url) 
	{
		$html = '<?xml encoding="UTF-8">';
		$options = array(
			'http'=>array('method'=>"GET", 'header'=>"User-Agent: googleBot/0.1\n")
			);
		$context = stream_context_create($options);
		$getConstants = file_get_contents($url, false, $context);
		$this->doc = new DomDocument('1.0', 'utf-8');
		@$this->doc->loadHTML($html . $getConstants);
	}
	public function getlinks() 
	{
		return $this->doc->getElementsByTagName("a");
	}
	public function getTitleTags() 
	{
		return $this->doc->getElementsByTagName("title");
	}
	public function getMetaTags() 
	{
		return $this->doc->getElementsByTagName("meta");
	}
	public function getImages() 
	{
		return $this->doc->getElementsByTagName("img");
	}
}
?>