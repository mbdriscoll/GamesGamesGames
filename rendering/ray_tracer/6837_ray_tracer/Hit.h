#ifndef HIT_H
#define HIT_H

#include <vecmath.h>
#include "Ray.h"
#include <float.h>

class Material;

class Hit
{
public:

    // constructors
    Hit()
    {
        material = NULL;
	t = FLT_MAX;
    }

    Hit( float _t, Material* m, const Vector3f& n )
    { 
        t = _t;
        material = m;
        normal = n;
    }

    Hit( const Hit& h )
    { 
        t = h.t; 
        material = h.material; 
        normal = h.normal;
    }

    // destructor
    ~Hit()
    {
    
    }

    float getT() const
    {
        return t;
    }
    
    Material* getMaterial() const
    {
        return material;
    }
    
    const Vector3f& getNormal() const
    {
        return normal;
    }

    void set( float _t, Material* m, const Vector3f& n )
    {
        t = _t;
        material = m;
        normal = n;
    }

private: 

    float t;
    Material* material;
    Vector3f normal;

};

inline ostream& operator << ( ostream &os, const Hit& h)
{
    os << "Hit <" << h.getT() << ", " << h.getNormal() << ">";
    return os;
}

#endif // HIT_H
