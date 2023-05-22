using System.Collections;
using System.Collections.Generic;
using System.Security.Cryptography;
using UnityEngine;

public class Laser : MonoBehaviour
{
    [SerializeField]
    private float _speed = 10.0f;

    void Update()
    {

        transform.Translate(Vector3.up * _speed * Time.deltaTime);

        if (transform.position.y >= 6.0f)
        {
            //destroy the laser's parent if there is any
            /*if (transform.parent != null)
            {
                Destroy(transform.parent.gameObject);
            }*/
            Destroy(this.gameObject);
            //Destroy(laserShoot); + public GameObject laserShoot;
            /*Weird Analisis for this green code above:
             * for some reason the player's speed was influentiating on the GUI of the laser's spawn, they were desyncronized. 
             * So i raised the speed from 5 to 8 on the player inspector and it worked for now.
             */
        }
    }
    
}
