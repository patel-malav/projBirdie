import { Vector3 } from 'three';

export function getVector3(lat: number, long: number, alti = 0, radius = 100) {
    radius += alti;

    const phi = (90 - lat) * (Math.PI / 180);
    const theta = (long + 180) * (Math.PI / 180);

    return new Vector3(
        - radius * Math.sin(phi) * Math.cos(theta),
        radius * Math.cos(phi),
        radius * Math.sin(phi) * Math.sin(theta)       
    )
}