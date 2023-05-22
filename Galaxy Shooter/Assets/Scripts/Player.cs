using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Player : MonoBehaviour
{
    public bool canTripleShot = false;
    public bool isSpeedBoostActive = false;
    public bool isShieldActive = false;//shield
    
    //life value for the player
    [SerializeField]
    private int lives = 3;

    [SerializeField]
    private GameObject _laserPrefab;
    [SerializeField]
    private GameObject _tripleShotPrefab;
    [SerializeField]
    private GameObject _explosionPrefab;
    [SerializeField]
    private GameObject _shieldGameObject;//shield he didn't make it a prefabaaaaaaaa
    [SerializeField]
    private GameObject[] _engines;

    [SerializeField]
    private float _speed = 6.0f;

    //Cool down System:
    [SerializeField]
    private float _fireRate = 0.25f;
    private float _canFire = 0.0f;

    private UIManager _uiManager;
    private GameManager _gameManager;
    private SpawnManager _spawnManager;
    private AudioSource _audioSource;
    
    private int _hitCount = 0;
    
    void Start()
    {
        //current position = new position
        transform.position = new Vector3(0, 0, 0);
        
        _uiManager = GameObject.Find("Canvas").GetComponent<UIManager>();
        if (_uiManager != null)//null check
        {
            _uiManager.UpdateLives(lives);
        }
        _gameManager = GameObject.Find("Game_Manager").GetComponent<GameManager>();
        _spawnManager = GameObject.Find("Spawn_Manager").GetComponent<SpawnManager>();
        if (_spawnManager != null)//null check
        {
            _spawnManager.StartSpawnRoutines();
        }

        _audioSource = GetComponent<AudioSource>();//i'm already at the player component so just grab the component.

        _hitCount = 0;
    }

    void Update()
    {
        Movement();

        //if space key is pressed 
        //spawn a laser at player position

        if (Input.GetKeyDown(KeyCode.Space) || Input.GetMouseButton(0))
        {
            Shoot();
        }
    }

    private void Shoot()
    {
        if (Time.time > _canFire)
        {
            _audioSource.Play();
            if (canTripleShot == true)
            {
                Instantiate(_tripleShotPrefab, transform.position, Quaternion.identity);//the laser is behaving contrary to what s told with this one.
            }
            else
            {
                Instantiate(_laserPrefab, transform.position + new Vector3(0, 0.88f, 0), Quaternion.identity);//vector sum with current position
            }
            //spawn a laser
            _canFire = Time.time + _fireRate;
        }
    }
    private void Movement()
    {
        float horizontalInput = Input.GetAxis("Horizontal");//horizontal movement
        float verticalInput = Input.GetAxis("Vertical");//vertical movement - camelCase :3

        if (isSpeedBoostActive == true)
        {
            //this or i can just change the variable and not repeat the code.
            transform.Translate(Vector3.right * _speed * 1.5f * horizontalInput * Time.deltaTime);
            transform.Translate(Vector3.up * _speed * 1.5f * verticalInput * Time.deltaTime);
        }
        else
        {
            transform.Translate(Vector3.right * _speed * horizontalInput * Time.deltaTime);
            transform.Translate(Vector3.up * _speed * verticalInput * Time.deltaTime);
        }

        //restrain and wrap feature
        if (transform.position.x > 9.4f) //right border
        {
            transform.position = new Vector3(-9.3f, transform.position.y, 0);
        }
        else if (transform.position.x < -9.4f) //left border
        {
            transform.position = new Vector3(9.3f, transform.position.y, 0);
        }

        //restrain and wrap feature
        if (transform.position.y > 5.6f) //up border
        {
            transform.position = new Vector3(transform.position.x, -5.5f, 0);
        }
        else if (transform.position.y < -5.6f) // down border
        {
            transform.position = new Vector3(transform.position.x, 5.5f, 0);
        }
    }
    //TripleShot Coroutine
    public void TripleShotPowerupOn()
    {
        canTripleShot = true;
        StartCoroutine(TripleShotPowerDownRoutine());
    }
    public IEnumerator TripleShotPowerDownRoutine()//this is private by default, you need to put a public to use it.
    {
        yield return new WaitForSeconds(5.0f);
        canTripleShot = false;
    }
    //SpeedBoost Coroutine
    public void SpeedBoostPowerupOn()
    {
        isSpeedBoostActive = true;
        StartCoroutine(SpeedBoostPowerDownRoutine());
    }
    public IEnumerator SpeedBoostPowerDownRoutine()
    {
        yield return new WaitForSeconds(5.0f);
        isSpeedBoostActive = false;
    }
    public void EnableShields()//enables shields and the game object
    {
        isShieldActive = true;
        _shieldGameObject.SetActive(true); //sets a game object, from the inspector, true.Enables.
    }

    //if the Damage method is called, it verifies if life equals zero, then it destroys the player, if it's not, then it just subtracts 1 from life.
    public void Damage()
    {
        if (isShieldActive == true)
        {
            isShieldActive = false;
            _shieldGameObject.SetActive(false);
            return; // return method stops the program here and return it to damage.
        }
        
        _hitCount++;

        if (_hitCount == 1)
        {
            //turn left engine failure on
            _engines[0].SetActive(true);
        }
        else if (_hitCount == 2)
        {
            //turn right engine failure on
            _engines[1].SetActive(true);
        }
        
        lives--;

        _uiManager.UpdateLives(lives);//updates lives in the UIManager with damage.
        
        if (lives < 1)
        {
            Instantiate(_explosionPrefab, transform.position, Quaternion.identity);
            _gameManager.gameOver = true;
            _uiManager.ShowTitleScreen();
            Destroy(this.gameObject);
        }
    }
}
